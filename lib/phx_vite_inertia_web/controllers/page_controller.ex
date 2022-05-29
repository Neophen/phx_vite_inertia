defmodule PhxViteInertiaWeb.PageController do
  use PhxViteInertiaWeb, :controller

  def index(conn, _params) do
    render_inertia(conn, "Home", props: %{hello: "something awesome now"})
  end
end
