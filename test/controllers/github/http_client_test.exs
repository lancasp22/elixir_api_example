defmodule GithubApi.Github.HttpClientTest do
  use ExUnit.Case, async: true
  alias GithubApi.Github.HttpClient

  @tag :integration
  test "fetches a user from github" do
    response = HttpClient.get_user("elixir-lang")

    assert String.contains?(response, ["elixir-lang", "http://elixir-lang.org"])
  end

  @tag :integration
  test "fetches a repos for a user from github" do
    response = HttpClient.get_user_repos("elixir-lang")

    assert String.contains?(response, ["https://github.com/elixir-lang/docs",
      "Docs for the Elixir project hosted on elixir-lang.org. Generated automatically."])
  end
end