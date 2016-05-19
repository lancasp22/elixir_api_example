defmodule GithubApi.Github.TransformTest do
  use ExUnit.Case
  alias GithubApi.Github.Transform

  test "parse the response containing a user" do
    {:ok, file_content} = File.read("test/sample/response.json")
    user = Transform.extract_user(file_content)
    assert user.login == "elixir-lang"
    assert user.public_repos == 15
  end
end