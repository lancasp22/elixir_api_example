defmodule GithubApi.Github.Transform do
  alias GithubApi.Github.Users.User
  alias GithubApi.Github.Users.UserRepo

  def extract_user(raw_response) do
    {:ok, user} = Poison.decode(raw_response, as: %User{})  
    user  
  end

  def extract_user_repos(raw_response) do
    {:ok, user_repos} = Poison.decode(raw_response, as: [%UserRepo{}])
    IO.inspect(user_repos) 
    user_repos 
  end
end