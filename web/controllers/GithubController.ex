# require IEx

defmodule GithubApi.GithubController do
  use GithubApi.Web, :controller
  alias GithubApi.Github.Client
  alias GithubApi.Github.Transform
  alias GithubApi.Github.Users.Repository

  def user(conn, %{"user" => user}) do
    # IEx.pry
    response = Client.get_user(user)
    |> Transform.extract_user

    Repository.save(response)

    json conn, response
  end

  def repos(conn, %{"user" => user}) do
    # IEx.pry
    response = Client.get_user_repos(user)
    |> Transform.extract_user_repos

    json conn, response
  end
end