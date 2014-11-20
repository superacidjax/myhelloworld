class Completion < ActiveRecord::Base
  has_paper_trail

  belongs_to :lesson
  belongs_to :user, touch: true
  belongs_to :course
end
