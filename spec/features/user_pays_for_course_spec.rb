require 'rails_helper'

feature 'User pays for a course', js: true do
  let(:course) { Fabricate(:course) }
  let!(:user) { Fabricate(:user) }
  let(:per_discount_code) { Fabricate(:discount_code) }
  let(:sub_discount_code) { Fabricate(:discount_code,
                                      discount_type: 'subtraction',
                                      discount_amount: '2000') }

  scenario 'Signed in user buys a course' do
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
    expect(page).to have_content 'Payments'
  end
  scenario 'Signed in user uses declined card' do
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

  scenario 'Signed in user uses a percentage discount code' do
    sign_in(user)
    visit course_lessons_path(course)
    click_link "get_access#{course.lessons.first.id}"
    click_link 'Use a discount code'
    fill_in 'discount_code', with: per_discount_code.discount_code
    click_button 'Apply Code'
    expect(page).to have_content 'Discount applied!'
    new_price = course.calculate_final_discounted_price(per_discount_code.id)/100
    expect(page).to have_content "$#{"%g" % new_price}"
  end
end
