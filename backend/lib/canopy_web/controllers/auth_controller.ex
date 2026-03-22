defmodule CanopyWeb.AuthController do
  use CanopyWeb, :controller

  alias Canopy.Repo
  alias Canopy.Schemas.User
  import Ecto.Query

  def login(conn, %{"email" => email, "password" => password}) do
    user = Repo.one(from u in User, where: u.email == ^email)

    cond do
      user && Bcrypt.verify_pass(password, user.password_hash) ->
        {:ok, token, _claims} =
          Canopy.Guardian.encode_and_sign(user, %{"role" => user.role}, ttl: {1, :hour})

        Repo.update!(Ecto.Changeset.change(user, last_login: DateTime.utc_now() |> DateTime.truncate(:second)))

        json(conn, %{
          token: token,
          user: %{
            id: user.id,
            name: user.name,
            email: user.email,
            role: user.role
          }
        })

      true ->
        # Constant-time comparison to prevent user enumeration
        Bcrypt.no_user_verify()

        conn
        |> put_status(401)
        |> json(%{error: "invalid_credentials"})
    end
  end

  def login(conn, _params) do
    conn
    |> put_status(400)
    |> json(%{error: "invalid_request", details: "Missing email or password"})
  end

  def register(conn, %{"name" => name, "email" => email, "password" => password}) do
    # First ever registration becomes admin; all subsequent users are members
    user_count = Repo.aggregate(User, :count)
    role = if user_count == 0, do: "admin", else: "member"

    case Canopy.Accounts.create_user(%{
           name: name,
           email: email,
           password: password,
           role: role,
           provider: "local"
         }) do
      {:ok, user} ->
        {:ok, token, _claims} =
          Canopy.Guardian.encode_and_sign(user, %{"role" => user.role}, ttl: {1, :hour})

        workspace_path = Path.join([System.get_env("HOME") || "/tmp", ".canopy", "default"])

        {:ok, workspace} =
          Canopy.Workspaces.create_workspace(%{
            name: "#{name}'s Workspace",
            path: workspace_path,
            status: "active",
            owner_id: user.id
          })

        conn
        |> put_status(201)
        |> json(%{
          token: token,
          user: %{id: user.id, name: user.name, email: user.email, role: user.role},
          workspace: %{id: workspace.id, name: workspace.name}
        })

      {:error, changeset} ->
        conn
        |> put_status(422)
        |> json(%{error: "registration_failed", details: format_errors(changeset)})
    end
  end

  def register(conn, _params) do
    conn
    |> put_status(400)
    |> json(%{error: "invalid_request", details: "Missing name, email, or password"})
  end

  def status(conn, _params) do
    user_count = Repo.aggregate(User, :count)

    json(conn, %{
      has_users: user_count > 0,
      registration_open: true
    })
  end

  def refresh(conn, _params) do
    with ["Bearer " <> token] <- get_req_header(conn, "authorization"),
         {:ok, _old_claims} <- Canopy.Guardian.decode_and_verify(token),
         {:ok, _old_token, {new_token, new_claims}} <- Canopy.Guardian.refresh(token) do
      json(conn, %{token: new_token, expires_at: new_claims["exp"]})
    else
      _ ->
        conn
        |> put_status(401)
        |> json(%{error: "invalid_token"})
    end
  end

  defp format_errors(changeset) do
    Ecto.Changeset.traverse_errors(changeset, fn {msg, opts} ->
      Enum.reduce(opts, msg, fn {key, value}, acc ->
        String.replace(acc, "%{#{key}}", to_string(value))
      end)
    end)
  end
end
