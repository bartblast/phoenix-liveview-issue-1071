# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :liveview_problems, LiveviewProblemsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0nf6FfCLDP9naRiMOvbBqA/J0QSgPS1vWcSHb2PxJsqxPhJxVNyTIWYFq4M3Ppa9",
  render_errors: [view: LiveviewProblemsWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LiveviewProblems.PubSub,
  live_view: [signing_salt: "kriySFsn"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
