Fabricator(:lesson) do
  course_id   1
  name { Faker::Company.catch_phrase }
  description { Faker::Lorem.paragraph }
  video_url   12311231234
  notes { Faker::Lorem.paragraph }
  thumbnail_url 'http://example.com'
  duration { Random.new.rand(60) }
  lesson_number { sequence(:lesson_number) { |i| i } }
end
