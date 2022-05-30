defmodule PhxViteInertiaWeb.PageController do
  use PhxViteInertiaWeb, :controller

  def index(conn, _params) do
    render_inertia(conn, "Home",
      props: %{
        "title" => "Home Page",
        "aboutPath" => Routes.page_path(conn, :about)
      }
    )
  end

  def about(conn, _params) do
    render_inertia(conn, "About",
      props: %{
        "title" => "About Page",
        "homePath" => Routes.page_path(conn, :index)
      }
    )
  end
end
