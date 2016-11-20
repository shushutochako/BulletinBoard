# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :bulletinBoard,
  ecto_repos: [BulletinBoard.Repo]

# Configures the endpoint
config :bulletinBoard, BulletinBoard.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "QZzqAPRQ7zS1bcp3Psy8a9wVYpp4aIkJBqkVRNWlWlYfUc5mC3Mfj81MbQ/gUpu5",
  render_errors: [view: BulletinBoard.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BulletinBoard.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
