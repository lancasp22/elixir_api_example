defmodule GithubApi.Github.ClientTest do
  use ExUnit.Case, async: true
  alias GithubApi.Github.Client

  @tag :integration
  test "fetches a user from github" do
    response = Client.get_user("elixir-lang")

    assert String.contains?(response, ["elixir-lang", "http://elixir-lang.org"])
  end
end