class Lesson < ActiveRecord::Base
  has_paper_trail
  acts_as_commontable

  belongs_to :course, touch: true
  has_many :completions

  validates :name, :description, :video_url, :notes, :thumbnail_url, :duration,
    :lesson_number, :course_id, presence: true

  validates_numericality_of :duration, :lesson_number

  validate :lesson_number_can_not_duplicate_another_in_same_course

  def lesson_number_can_not_duplicate_another_in_same_course
    lessons  = Lesson.where(course_id: course_id)
    if lessons.where(course_id: course_id, lesson_number: lesson_number).present?
      errors.add(:lesson_number, 'You have already used this lesson number for
                 this course.')
    end
  end

end
