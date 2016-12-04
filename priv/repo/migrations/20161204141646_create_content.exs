defmodule BulletinBoard.Repo.Migrations.CreateContent do
  use Ecto.Migration

  def change do
    create table(:contents) do
      add :content, :text
      add :topic_id, references(:topics, on_delete: :nothing)

      timestamps()
    end
    create index(:contents, [:topic_id])

  end
end
