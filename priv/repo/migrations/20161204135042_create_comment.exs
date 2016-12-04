defmodule BulletinBoard.Repo.Migrations.CreateComment do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :content, :string, null: false
 
      timestamps
    end

  end
end
