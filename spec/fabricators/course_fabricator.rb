Fabricator(:course) do
  name { Faker::Company.catch_phrase }
  price 30000
  description { Faker::Lorem.paragraph }
  video_url 108074329
  slug  { Faker::Company.catch_phrase.parameterize }
  programming_language { %w(Swift Ruby Javascript).sample }
  level { %w(Beginner Intermediate Advanced).sample }
  device { %w(iOS Web).sample }
  headline { Faker::Lorem.sentence }
  lessons(count: 6) 
end
