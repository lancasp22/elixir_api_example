# require IEx

defmodule GithubApi.GithubController do
  use GithubApi.Web, :controller
  alias GithubApi.Github.Client
  alias GithubApi.Github.Transform

  def user(conn, %{"user" => user}) do
    # IEx.pry
    response = Client.get_user(user)
    |> Transform.extract_user

    json conn, response
  end
end