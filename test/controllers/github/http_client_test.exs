defmodule GithubApi.Github.HttpClientTest do
  use ExUnit.Case, async: true
  alias GithubApi.Github.HttpClient

  @tag :integration
  test "fetches a user from github" do
    response = HttpClient.get_user("elixir-lang")

    assert String.contains?(response, ["elixir-lang", "http://elixir-lang.org"])
  end
end