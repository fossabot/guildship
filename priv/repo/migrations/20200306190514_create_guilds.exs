defmodule Guildship.Repo.Migrations.CreateGuilds do
  use Ecto.Migration

  def change do
    create table(:guilds) do
      add :name, :string, null: false
      add :entity_id, references(:entities)

      timestamps()
    end
  end
end
