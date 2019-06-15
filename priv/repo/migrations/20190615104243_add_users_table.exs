defmodule OurWedding.Repo.Migrations.AddUsersTable do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :first_name, :string, null: false
      add :last_name, :string, null: false
      add :telephone_number, :integer

      timestamps()
    end
    create unique_index(:users, [:first_name, :last_name], name: :unique_user_name)
  end
end
