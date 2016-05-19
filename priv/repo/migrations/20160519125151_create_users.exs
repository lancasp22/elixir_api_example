defmodule GithubApi.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :login, :string
      add :public_repos, :integer

      timestamps
    end
  end
end
