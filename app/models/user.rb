class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_paper_trail
  acts_as_commontator

  has_many :sales
  has_many :completions

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, on: :create
  validates_confirmation_of :password, if: :password
  validates :password, length: { minimum: 6,
    message: 'Your password must be at least 6 characters', if: :password }


  before_save :downcase_email

  def downcase_email
    self.email.downcase
  end

end
