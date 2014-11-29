require 'rails_helper'

RSpec.describe Course, :type => :model do

  before do
    @course = Course.new(name: 'My great course', price: 2000,
      description: 'This is an awesome course!', video_url: 108074329,
      slug: 'my-great-course', programming_language: 'Swift',
      level: 'Beginner', device: 'iOS', headline: 'Buy this, you will be happy!')
  end

  subject { @course }

  it { should respond_to(:name) }
  it { should respond_to(:price) }
  it { should respond_to(:description) }
  it { should respond_to(:video_url) }
  it { should respond_to(:slug) }
  it { should respond_to(:programming_language) }
  it { should respond_to(:level) }
  it { should respond_to(:device) }
  it {should respond_to(:headline) }

  it { should be_valid }

  describe 'when a name is not present' do
    before { @course.name = " " }
    it { should_not be_valid }
  end

  describe 'when a price is not present' do
    before { @course.price = nil }
    it { should_not be_valid }
  end

  describe 'when a description is not present' do
    before { @course.description = " " }
    it { should_not be_valid }
  end

  describe 'when a video_url is not present' do
    before { @course.video_url = " " }
    it { should_not be_valid }
  end

  describe 'when a slug is not present' do
    before { @course.slug = " " }
    it { should_not be_valid }
  end

  describe 'when a programming_language is not present' do
    before { @course.programming_language = " " }
    it { should_not be_valid }
  end

  describe 'when a level is not present' do
    before { @course.level = " " }
    it { should_not be_valid }
  end

  describe 'when a device is not present' do
    before { @course.device = nil }
    it { should_not be_valid }
  end

  describe 'when a headline is not present' do
    before { @course.headline = " " }
    it { should_not be_valid }
  end

  describe 'when a price is too small' do
    before { @course.price = 200 }
    it { should_not be_valid }
  end

end
