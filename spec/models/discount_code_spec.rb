require 'rails_helper'

RSpec.describe DiscountCode, :type => :model do

  before do
    @discount_code = DiscountCode.new(discount_code: '20percent',
      discount_amount: 20, expiration_date: Date.today + 2.days,
      description: 'this is a percentage discount', discount_type: 'percent',
      referral_email: 'brian@example.com', referral_name: 'Brian',
      cancelled: false)
  end

  subject { @discount_code }

  it { should respond_to(:discount_code) }
  it { should respond_to(:discount_type) }
  it { should respond_to(:discount_amount) }
  it { should respond_to(:expiration_date) }
  it { should respond_to(:description) }
  it { should respond_to(:referral_name) }
  it { should respond_to(:referral_email) }
  it { should respond_to(:cancelled) }

  it { should be_valid }

  describe 'when a discount_code is not present' do
    before { @discount_code.discount_code = " " }
    it { should_not be_valid }
  end

  describe 'when a type is not present' do
    before { @discount_code.discount_type = " " }
    it { should_not be_valid }
  end

  describe 'when a description is not present' do
    before { @discount_code.description = " " }
    it { should_not be_valid }
  end

  describe 'when a expiration_date is not present' do
    before { @discount_code.expiration_date = nil }
    it { should_not be_valid }
  end

  describe 'when a discount_amount is not present' do
    before { @discount_code.discount_amount = nil }
    it { should_not be_valid }
  end

  describe 'when the discount type is not valid' do
    before { @discount_code.discount_type = 'something wrong' }
    it { should_not be_valid }
  end

end
