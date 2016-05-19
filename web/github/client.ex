defmodule GithubApi.Github.Client do
  @base_url "https://api.github.com/"

  def get_user(name) do
    query_for_user_url = @base_url <> "users/#{name}"

    response = HTTPotion.get(query_for_user_url, headers: ["User-Agent": "Github api"])
    response.body
  end
end