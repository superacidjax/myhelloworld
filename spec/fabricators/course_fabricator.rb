Fabricator(:course) do
  name { Faker::Company.catch_phrase }
  price 30000
  description { Faker::Lorem.paragraph }
  video_url 108074329
  slug  { Faker::Company.catch_phrase.parameterize }
  programming_language 'Swift'
  level 'Beginner'
  device 'iOS'
  headline { Faker::Lorem.sentence }
end
