defmodule OurWedding.Accounts do
  @moduledoc """
  The Accounts context.
  """

  alias OurWedding.Repo
  alias OurWedding.Accounts.User

  def create_user(attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert!()
  end

  def list_users do
    User
    |> Repo.all()
  end

  def get_user(id) do
    Enum.find(list_users(), fn map -> map.id == id end)
  end

  def get_user_by(params) do
    Enum.find(list_users(), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end)
  end
end
