# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_tasks,
  ecto_repos: [PhoenixTasks.Repo]

# Configures the endpoint
config :phoenix_tasks, PhoenixTasks.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "H8cQWU6b1Gc8GIIrMq0nN0pZI3/CDCXzZhEU6hOFzH5p9zABRe1Eq/zmlodEoVwW",
  render_errors: [view: PhoenixTasks.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixTasks.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
