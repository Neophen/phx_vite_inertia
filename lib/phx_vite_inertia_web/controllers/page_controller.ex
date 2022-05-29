defmodule PhxViteInertiaWeb.PageController do
  use PhxViteInertiaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
