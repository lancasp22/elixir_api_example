defmodule GithubApi.Github.Transform do
  alias GithubApi.Github.Users.User
  alias GithubApi.Github.Users.UserRepo

  def extract_user(raw_response) do
    {:ok, user} = Poison.decode(raw_response, as: %User{})
    Map.delete(user, :updated_at)

  end

  def extract_user_repos(raw_response) do
    {:ok, user_repos} = Poison.decode(raw_response, as: [%UserRepo{}])
    user_repos 
  end
end