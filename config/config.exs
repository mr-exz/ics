# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ics,
  ecto_repos: [Ics.Repo]

# Configures the endpoint
config :ics, IcsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0b+bH+SUpQ4jH8noCmC94U0KyKjT4HendtNiJL/63ADWfHc6yBHGuqv1jpEmgQBj",
  render_errors: [view: IcsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Ics.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
