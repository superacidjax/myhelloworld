require 'rails_helper'

RSpec.describe Charge, :type => :model do

  before do
    @charge = Charge.new(state: 'pending', stripe_id: 'zkmxkm_aksjnsakln',
      fee_amount: 900, amount: 30000, course_id: 1, user_id: 1, guid: '123-123',
      access_expiration_date: Date.today + 1.year,
      card_expiration: Date.today + 5.years, default_card: 'somecard',
      discount_code_id: 2, course_price: 300)
  end

  subject { @charge }

  it { should respond_to(:state) }
  it { should respond_to(:stripe_id) }
  it { should respond_to(:fee_amount) }
  it { should respond_to(:amount) }
  it { should respond_to(:course_id) }
  it { should respond_to(:user) }
  it { should respond_to(:access_expiration_date) }
  it { should respond_to(:card_expiration) }
  it { should respond_to(:default_card) }
  it { should respond_to(:discount_code_id) }
  it { should respond_to(:course_price) }

  it { should be_valid }

  specify { expect(@charge.active?).to be_truthy }

  describe 'when a charge is not active' do
    before { @charge.access_expiration_date = Date.today - 1.day }
    specify { expect(@charge.active?).to_not be_truthy }
  end
  
  describe 'when an amount is not present' do
    before { @charge.amount = nil }
    it { should_not be_valid }
  end

  describe 'when an amount is too small' do
    before { @charge.amount = nil }
    it { should_not be_valid }
  end

  describe 'when a user_id is not present' do
    before { @charge.user_id = nil }
    it { should_not be_valid }
  end

  describe 'when course_id is not present' do
    before { @charge.course_id = " " }
    it { should_not be_valid }
  end

end
