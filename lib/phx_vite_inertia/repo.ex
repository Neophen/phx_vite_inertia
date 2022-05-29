defmodule PhxViteInertia.Repo do
  use Ecto.Repo,
    otp_app: :phx_vite_inertia,
    adapter: Ecto.Adapters.Postgres
end
