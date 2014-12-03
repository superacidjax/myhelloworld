require 'rails_helper'

feature 'User pays for a course' do
  let(:course) { Fabricate(:course) }
  let!(:user) { Fabricate(:user) }

  scenario 'Signed in user buys a course', js: true do
    sign_in(user)
    visit course_lessons_path(course)
    click_link "get_access#{course.lessons.first.id}"
    click_button 'Order Now'
    sleep 2 
    stripe_iframe = all('iframe[name=stripe_checkout_app]').last
    Capybara.within_frame stripe_iframe do
      page.execute_script(%Q{ $('input#card_number').val('4242424242424242'); })
      page.execute_script(%Q{ $('input#cc-exp').val('08/44'); })
      page.execute_script(%Q{ $('input#cc-csc').val('999'); })
      page.execute_script(%Q{ $('#submitButton').click(); })
      sleep 2 
    end
    expect(page).to have_content 'Dashboard'
    expect(page).to have_content 'Thanks for your purchase!'
  end
  scenario 'Signed in user uses declined card', js: true do
    sign_in(user)
    visit course_lessons_path(course)
    click_link "get_access#{course.lessons.first.id}"
    click_button 'Order Now'
    sleep 2 
    stripe_iframe = all('iframe[name=stripe_checkout_app]').last
    Capybara.within_frame stripe_iframe do
      page.execute_script(%Q{ $('input#card_number').val('4000000000000002'); })
      page.execute_script(%Q{ $('input#cc-exp').val('08/44'); })
      page.execute_script(%Q{ $('input#cc-csc').val('999'); })
      page.execute_script(%Q{ $('#submitButton').click(); })
      sleep 2 
    end
    expect(page).to_not have_content 'Thanks for your purchase!'
  end
end
