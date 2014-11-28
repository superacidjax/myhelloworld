class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_paper_trail
  acts_as_commontator

  has_many :charges
  has_many :completions

  has_many :courses, through: :charges

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, on: :create
  validates_confirmation_of :password, if: :password


  before_save :downcase_email

  def downcase_email
    self.email.downcase
  end

  def current_courses
    current_courses = Charge.where("access_expiration_date > ? AND user_id = ?",
      Date.today.to_s, self.id).pluck(:course_id)
  end

end
