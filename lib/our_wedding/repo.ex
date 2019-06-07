defmodule OurWedding.Repo do
  use Ecto.Repo,
    otp_app: :our_wedding,
    adapter: Ecto.Adapters.Postgres
end
