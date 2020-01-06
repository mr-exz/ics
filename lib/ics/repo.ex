defmodule Ics.Repo do
  use Ecto.Repo,
    otp_app: :ics,
    adapter: Ecto.Adapters.Postgres
end
