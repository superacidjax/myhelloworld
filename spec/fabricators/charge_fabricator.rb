Fabricator(:charge) do
  state                  "pending"
  stripe_id              "MyString"
  error                  "MyText"
  fee_amount             1
  amount                 1
  course_id              1
  user_id                1
  guid                   "MyString"
  access_expiration_date "2014-11-21"
end
