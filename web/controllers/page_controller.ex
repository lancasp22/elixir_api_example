defmodule GithubApi.PageController do
  use GithubApi.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
