defmodule GithubApi.Github.TransformTest do
  use ExUnit.Case
  alias GithubApi.Github.Transform

  test "parse the response containing a user" do
    {:ok, file_content} = File.read("test/sample/response.json")
    user = Transform.extract_user(file_content)
    assert user.login == "elixir-lang"
    assert user.public_repos == 15
  end

  test "parse the response containing user repos" do
    {:ok, file_content} = File.read("test/sample/repos.json")
    user_repos = Transform.extract_user_repos(file_content)
    assert length(user_repos) == 2
  end
end