defmodule PhxInertia do
  @moduledoc File.read!("README_PHOENIX_INERTIA.md")
  import Plug.Conn

  @doc "share()"
  def share(%Plug.Conn{} = conn, key, val) do
    shared_props =
      conn.private
      |> Map.get(:phx_vite_inertia_shared_props, %{})
      |> Map.put(key, val)

    put_private(conn, :phx_vite_inertia_shared_props, shared_props)
  end

  def assets_version do
    Application.get_env(:phx_vite_inertia, :assets_version, "1")
    |> to_string
  end

  def inertia_layout do
    Application.get_env(:phx_vite_inertia, :inertia_layout, "app.html")
    |> to_string
  end

  def path_with_params(%{request_path: request_path, query_string: ""}), do: request_path

  def path_with_params(%{request_path: request_path, query_string: query_string}) do
    request_path <> "?" <> query_string
  end

  def path_with_params(%{request_path: request_path}), do: request_path
end
