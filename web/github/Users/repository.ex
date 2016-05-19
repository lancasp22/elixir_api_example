defmodule GithubApi.Github.Users.Repository do
  alias GithubApi.Repo
  alias GithubApi.Github.Users.User

  def all do
    Repo.all(User)
  end

  def save(user) do
    Repo.insert(user)
  end
end