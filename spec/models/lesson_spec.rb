require 'rails_helper'

RSpec.describe Lesson, :type => :model do

  before do
    @lesson = Lesson.new(name: 'My Lesson', description: '1.1 About Ruby',
                         video_url: '1233321233f', notes: '##gmsS ###kmslfmlsd',
                         free: false, thumbnail_url: 'https://myphoto.example.com',
                         duration: '53', lesson_number: 1, course_id: 1)
  end

  subject { @lesson }

  it { should respond_to(:name) }
  it { should respond_to(:description) }
  it { should respond_to(:video_url) }
  it { should respond_to(:notes) }
  it { should respond_to(:free) }
  it { should respond_to(:thumbnail_url) }
  it { should respond_to(:duration) }
  it { should respond_to(:lesson_number) }
  it { should respond_to(:course_id) }

  it { should be_valid }

  describe 'when a name is not present' do
    before { @lesson.name = " " }
    it { should_not be_valid }
  end

  describe 'when a description is not present' do
    before { @lesson.description = " " }
    it { should_not be_valid }
  end

  describe 'when a video_url is not present' do
    before { @lesson.video_url = " " }
    it { should_not be_valid }
  end

  describe 'when notes are not present' do
    before { @lesson.notes = " " }
    it { should_not be_valid }
  end

  describe 'when thumbnail url is not present' do
    before { @lesson.thumbnail_url = " " }
    it { should_not be_valid }
  end

  describe 'when duration is not present' do
    before { @lesson.duration = nil }
    it { should_not be_valid }
  end

  describe 'when lesson number is not present' do
    before { @lesson.lesson_number = nil }
    it { should_not be_valid }
  end

  describe 'when a lesson number is not unique within the same course' do
    before do
      Fabricate(:lesson, course_id: 1, lesson_number: 10)
      @lesson.lesson_number = 10
    end
    it { should_not be_valid }
  end

end
