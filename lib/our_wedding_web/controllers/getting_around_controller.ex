defmodule OurWeddingWeb.GettingAroundController do
  use OurWeddingWeb, :controller

  alias OurWedding.Accounts

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
