defmodule GithubApi.Github.FakeClient do
  def get_user(_user) do
    {:ok, user} =File.read("test/sample/response.json")
    user
  end
end