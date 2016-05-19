defmodule GithubApi.Github.Users.UserRepo do
  use GithubApi.Web, :model

  # defstruct [:login, :public_repos]

  @derive {Poison.Encoder, only: [:html_url, :description]}
  schema "user_repo" do
    field :html_url, :string
    field :description, :string

    timestamps
  end
end
