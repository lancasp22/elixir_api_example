use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :github_api, GithubApi.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

config :github_api, :github_client, GithubApi.Github.FakeClient

# Set a higher stacktrace during test
config :phoenix, :stacktrace_depth, 20

# Configure your database
config :github_api, GithubApi.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "github_api_test",
  pool: Ecto.Adapters.SQL.Sandbox
