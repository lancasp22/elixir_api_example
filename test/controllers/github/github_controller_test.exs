defmodule GithubApi.GithubControllerTest do
  use GithubApi.ConnCase
  alias GithubApi.Github.Users.User
  alias GithubApi.Github.Users.UserRepo

  test "Get /users:user responds with 200" do
    # conn = get(conn, "/users/elixir-lang")
    conn = conn(:get, "/users/elixir-lang")
    response = GithubApi.Router.call(conn, [])

    assert response.status == 200
  end

  test "Get /users:user returns user json" do
   
    conn = conn(:get, "/users/elixir-lang")
    {:ok, user_in_json} = %User{login: "elixir-lang", public_repos: 15} |> Poison.encode
    response = GithubApi.Router.call(conn, [])
    assert response.resp_body == user_in_json
  end

  test "Get /users/:user/repos returns a list of repos" do
   
    conn = conn(:get, "/users/elixir-lang/repos")
    {:ok, repos_in_json} = 
      [%UserRepo{html_url: "https://github.com/elixir-lang/docs",
                 description: "Docs for the Elixir project hosted on elixir-lang.org. Generated automatically."},
       %UserRepo{html_url: "https://github.com/elixir-lang/ecto", description: "A database wrapper and language integrated query for Elixir"}]
       |> Poison.encode
    response = GithubApi.Router.call(conn, [])
    assert response.resp_body == repos_in_json
  end

end