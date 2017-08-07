# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :tic_tac_toe,
  ecto_repos: [TicTacToe.Repo]

# Configures the endpoint
config :tic_tac_toe, TicTacToeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "SyAFBVDO89fR5MiqrmLtUN6NsEhs4Gj+KRCMRlD4VclK0adhJ8z6+aI1Wn3oIoIA",
  render_errors: [view: TicTacToeWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TicTacToe.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
