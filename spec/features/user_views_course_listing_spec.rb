require 'rails_helper'

feature 'User views courses' do
  let(:course) { Fabricate(:course) }
  let(:second_course) { Fabricate(:course) }

  before do
    #this is a bullshit temporary hack
    course.save
    second_course.save
  end

  scenario 'User views course listing' do
    visit root_path
    click_link 'See our courses'
    expect(page).to have_content course.name
    expect(page).to have_content second_course.name
  end

  scenario 'User views course details' do
    visit courses_path
    click_link course.id
    expect(page).to have_content course.name
    expect(page).to have_content course.price
  end

  scenario 'User successfully signs up' do
    visit course_path(course)
    click_link 'Get Started Now'
    fill_in 'Name', with: 'Brian Dear'
    fill_in 'Email', with: 'brian@example.com'
    fill_in 'Password', with: 'password'
    click_button 'Create Account'
    expect(page).to have_content 'Payment'
    fill_in 'Credit Card', with: '4242424242424242'
    fill_in 'Expiration Month', with: '2'
    fill_in 'Expiration Year', with: '2019'
    fill_in 'CVV', with: '747'
    click_link 'Pay Now'
    expect(page).to have_content "Welcome to #{course.name}!"
  end
end
