# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :our_wedding,
  ecto_repos: [OurWedding.Repo]

# Configures the endpoint
config :our_wedding, OurWeddingWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "M+bfr3R/1y1uiX+uZhT4895wacPy1pYV9wx1nCfHSaaQ5bJhwToQ12WvCIzymxkt",
  render_errors: [view: OurWeddingWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: OurWedding.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
