Fabricator(:course) do
  name { Faker::Company.catch_phrase }
  price 300
end
