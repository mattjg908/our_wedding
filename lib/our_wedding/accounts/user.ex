defmodule OurWedding.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  alias OurWedding.Accounts.Credential

  schema "users" do
    field :first_name, :string
    field :last_name, :string
    field :telephone_number, :integer
    has_one :credential, Credential

    timestamps()
  end

  def registration_changeset(user, params) do
    user
    |> changeset(params)
    |> cast_assoc(:credential, with: &Credential.changeset/2, required: true)
  end

  def changeset(user, attrs) do
    user
    |> cast(attrs, [:first_name, :last_name, :telephone_number])
    |> validate_required([:first_name, :last_name])
    |> unique_constraint(:last_name, name: :unique_user_name)
  end
end
