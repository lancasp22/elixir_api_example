defmodule GithubApi.Github.Users.User do
  use GithubApi.Web, :model

  # defstruct [:login, :public_repos]

  @derive {Poison.Encoder, only: [:login, :public_repos]}
  schema "users" do
    field :login, :string
    field :public_repos, :integer

    timestamps
  end
end
