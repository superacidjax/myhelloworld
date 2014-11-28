Fabricator(:discount_code) do
  discount_code       "MyString"
  expiration_date     "2014-11-28"
  description         "MyText"
  discount_type       "MyString"
  discount_amount     1
  referral_email      "MyString"
  original_sale_price 1
  final_sale_price    1
  valid               false
  referral_name       "MyString"
end
