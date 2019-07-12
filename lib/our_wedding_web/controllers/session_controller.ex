defmodule OurWeddingWeb.SessionController do
  use OurWeddingWeb, :controller

  def new(conn, _) do
    render(conn, "new.html")
  end

  def create(
    conn,
    %{"session" => %{"username" => username, "password" => pass}}
  ) do
    case OurWedding.Accounts.authenticate_by_username_and_pass(username, pass) do
      {:ok, user} ->
        conn
        |> OurWeddingWeb.Auth.login(user)
        |> put_flash(:info, "Welcome back!")
        |> redirect(to: Routes.page_path(conn, :index))

      {:error, _reason} ->
        conn
        |> put_flash(:error, "Invalid username/password combination")
        |> render("new.html")
    end
  end
end
