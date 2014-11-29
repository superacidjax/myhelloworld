Fabricator(:discount_code) do
  discount_code       "20percent"
  expiration_date     "2014-11-28"
  description         'this is a percentage discount'
  discount_type       "percent"
  discount_amount     20
  referral_email      'brian@example.com'
  cancelled           false
  referral_name       'Brian'
end
