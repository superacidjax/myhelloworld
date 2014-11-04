require 'rails_helper'

RSpec.describe Course, :type => :model do

  before do
    @course = Course.new(name: 'My great course', price: 200)
  end

  subject { @course }

  it { should respond_to(:name) }
  it { should respond_to(:price) }

  it { should be_valid }
end
