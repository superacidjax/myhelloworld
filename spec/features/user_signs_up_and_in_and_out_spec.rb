require 'rails_helper'

feature 'User signs in, up and out' do
  let(:course) { Fabricate(:course) }
  let(:user) { Fabricate(:user) }

  before do
    course.save
  end

  scenario 'User signs up to try a course' do
    visit courses_path
    click_link course.id
    click_link 'Get Started Now'
    fill_in 'Display name', with: 'briandear'
    fill_in 'Email', with: 'brian@example.com'
    fill_in 'Password', with: 'password'
    click_button 'Try for Free'
    expect(page).to have_content 'Welcome! You are now signed up.'
    expect(page).to have_content course.lessons.where(lesson_number: 1).last.name
  end

  scenario 'User signs up with a bad email' do
    visit courses_path
    click_link course.id
    click_link 'Get Started Now'
    fill_in 'Display name', with: 'briandear'
    fill_in 'Email', with: 'brian@examplecom'
    fill_in 'Password', with: 'password'
    click_button 'Try for Free'
    expect(page).to have_content 'Email is invalid'
  end

  scenario 'User signs up with a bad email' do
    visit courses_path
    click_link course.id
    click_link 'Get Started Now'
    fill_in 'Display name', with: 'briandear'
    fill_in 'Email', with: 'brian@example.com'
    fill_in 'Password', with: ''
    click_button 'Try for Free'
    expect(page).to have_content "Password can't be blank"
  end


  scenario 'Existing user signs in and signs out' do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: 'password'
    click_button 'Sign in'
    expect(page).to have_content 'Dashboard'
    expect(page).to have_content 'Sign in successful'
    expect(page).to have_content 'Sign out'
    expect(page).to have_content 'Payments'
    click_link 'Sign out'
    expect(page).to have_content 'Signed out! See you next time!'
    expect(page).to have_content 'Sign In'
    expect(page).to_not have_content 'Sign out'
  end
end
