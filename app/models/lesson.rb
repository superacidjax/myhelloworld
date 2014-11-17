class Lesson < ActiveRecord::Base
  has_paper_trail
  acts_as_commontable

  belongs_to :course, touch: true
  has_many :completions
end
