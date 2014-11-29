require 'rails_helper'

feature 'User views courses' do
  let(:course) { Fabricate(:course) }
  let(:second_course) { Fabricate(:course) }

  before do
    #this is a bullshit temporary hack
    course.save
    second_course.save
  end

  scenario 'A visiting user views course listing' do
    visit root_path
    click_link 'See our courses'
    expect(page).to have_content course.name
    expect(page).to have_content second_course.name
    expect(page).to have_content course.level
    expect(page).to have_content course.programming_language
    expect(page).to have_content course.lessons.count
    expect(page).to have_link 'Read more'
  end

  scenario 'A visiting user views course details' do
    visit courses_path
    click_link course.id
    expect(page).to have_content course.name
    expect(page).to have_content course.level
    expect(page).to have_link 'Get Started Now'
    expect(page).to have_content course.description
    expect(page).to have_content course.headline
  end

  scenario 'A visiting user wants to get started' do
    visit course_path(course)
    click_link 'Get Started Now'
    expect(page).to have_content 'It starts here.'
    expect(page).to have_button 'Try for Free'
  end

end
