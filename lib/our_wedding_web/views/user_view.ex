defmodule OurWeddingWeb.UserView do
  use OurWeddingWeb, :view

  alias OurWedding.Accounts

  def full_name(%Accounts.User{first_name: first_name, last_name: last_name}) do
    String.trim("#{first_name} #{last_name}")
  end
end
