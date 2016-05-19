defmodule GithubApi.Github.Users.RepositoryTest do
  use ExUnit.Case, async: false
  alias GithubApi.Github.Users.Repository
  alias GithubApi.Github.Users.User

  # test "gets nothing from empty repository" do
  #   assert Repository.all == []
  # end

  test "repo can store a user" do
    user = %User{login: "peter", public_repos: 103 }
    Repository.save(user) 


    first_user = Repository.all
    |> List.first

    assert first_user.login == user.login
  end
end