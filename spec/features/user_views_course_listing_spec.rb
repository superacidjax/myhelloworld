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

  scenario 'User successfully visits Vimeo' do
    visit course_path(course)
    #test vimeo link here
  end
end
