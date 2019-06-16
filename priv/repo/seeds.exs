alias OurWedding.Accounts

for user <- [
  %{first_name: "José",  last_name: "Valim"},
  %{first_name: "Bruce", last_name: "Redrapids", telephone_number: 1234567890},
  %{first_name: "Chris", last_name: "McCord"}
] do
  Accounts.create_user(user)
end
