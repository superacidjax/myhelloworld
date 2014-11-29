require 'rails_helper'

feature 'User Views Homepage' do

  scenario 'User visits Privacy page' do
    visit root_path
    click_link 'Privacy'
    expect(page).to have_content "We don't share."
  end

  scenario 'User visits Terms page' do
    visit root_path
    click_link 'Terms of Use'
    expect(page).to have_content "Membership Sharing"
  end

  scenario 'User visits About page' do
    visit root_path
    click_link 'About'
    expect(page).to have_content "$100,000"
  end

end
