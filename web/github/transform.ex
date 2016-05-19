defmodule GithubApi.Github.Transform do
  alias GithubApi.Github.Users.User

  def extract_user(raw_response) do
    {:ok, user} = Poison.decode(raw_response, as: %User{})  
    user  
  end
end