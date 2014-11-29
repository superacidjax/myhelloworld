require 'rails_helper'

feature 'User Views Homepage' do

  scenario 'User visits home page' do
    visit root_path
    expect(page).to have_content 'Features of Everybody Code!'
  end
end
