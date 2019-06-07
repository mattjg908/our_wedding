defmodule OurWeddingWeb.UserController do
  use OurWeddingWeb, :controller

  alias OurWedding.Accounts

  def index(conn, _params) do
    users = Accounts.list_users()
    render(conn, "index.html", users: users)
  end
end
