defmodule GithubApi.Github.HttpClient do
  @base_url "https://api.github.com/"

  def get_user(name) do
    query_for_user_url = @base_url <> "users/#{name}"

    response = HTTPotion.get(query_for_user_url, headers: ["User-Agent": "Github api"])
    response.body
  end

  def get_user_repos(name) do
    query_for_user_repos_url = @base_url <> "users/#{name}/repos"

    response = HTTPotion.get(query_for_user_repos_url, headers: ["User-Agent": "Github api"])
    response.body
  end
end