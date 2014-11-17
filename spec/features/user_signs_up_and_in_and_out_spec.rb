require 'rails_helper'
require 'stripe_mock'

feature 'User accessing site', js: true do
  let(:stripe_helper) { StripeMock.create_test_helper }
  before { StripeMock.start }
  after { StripeMock.stop }

  scenario 'User signs up' do
    visit sign_up_path
    fill_in 'Email', with: 'brian@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Create Account'
    expect(page).to have_content "Payment"
    click_button 'submit'
  end
end


  # it "creates a stripe customer" do

  #   # This doesn't touch stripe's servers nor the internet!
  #   customer = Stripe::Customer.create({
  #     email: 'johnny@appleseed.com',
  #     card: stripe_helper.generate_card_token
  #   })
  #   expect(customer.email).to eq('johnny@appleseed.com')
  # end
# end