defmodule OurWeddingWeb.CalendarController do
  use OurWeddingWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
