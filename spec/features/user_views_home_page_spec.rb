require 'rails_helper'

feature 'User Views Homepage' do

  scenario 'A user views the home page' do

    visit root_path
    expect(page).to have_content('My Hello World')
  end
end
