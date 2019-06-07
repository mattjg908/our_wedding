defmodule OurWeddingWeb.UserView do
  use OurWeddingWeb, :view

  alias OurWedding.Accounts

  def first_name(%Accounts.User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end
