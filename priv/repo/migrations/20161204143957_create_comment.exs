defmodule BulletinBoard.Repo.Migrations.CreateComment do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :content, :text
      add :topic_id, references(:topics, on_delete: :nothing)

      timestamps()
    end
    create index(:comments, [:topic_id])

  end
end
