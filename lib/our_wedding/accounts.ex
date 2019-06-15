defmodule OurWedding.Accounts do
  @moduledoc """
  The Accounts context.
  """

  alias OurWedding.Accounts.User

  def list_users do
    [
      %User{id: "1", first_name: "José",  last_name: "Valim"},
      %User{id: "2", first_name: "Bruce", last_name: "Redrapids"},
      %User{id: "3", first_name: "Chris", last_name: "McCord"}
    ]
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
