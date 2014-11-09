require 'rails_helper'

RSpec.describe User, :type => :model do
  before do
    @user = User.new(email: 'my@example.com', password: 'password',
      password_confirmation: 'password')
  end

  subject { @user }

  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }

  it { should be_valid }

  describe 'when an email is not present' do

    before { @user.email = '' }
    it { should_not be_valid }
  end

end