defmodule GithubApi.Github.FakeClient do
  def get_user(_user) do
    {:ok, user} =File.read("test/sample/response.json")
    user
  end

  def get_user_repos(_user_repos) do
    {:ok, user_repos} =File.read("test/sample/repos.json")
    user_repos
  end
end