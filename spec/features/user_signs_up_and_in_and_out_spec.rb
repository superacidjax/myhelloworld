require 'rails_helper'

feature 'User accessing site' do

  scenario 'User signs up' do
    visit sign_up_path
    fill_in 'Email', with: 'brian@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Create Account'
    expect(page).to have_content "Signed in as brian@example.com"
    expect(page).to have_button 'Sign out'
  end
end
