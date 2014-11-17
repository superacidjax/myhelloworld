class Course < ActiveRecord::Base
  has_paper_trail

  has_many :sales
  has_many :lessons

  extend FriendlyId
  friendly_id :name, use: :slugged

end
