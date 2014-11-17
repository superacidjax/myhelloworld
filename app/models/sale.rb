class Sale < ActiveRecord::Base
  has_paper_trail

  belongs_to :course
  belongs_to :user

  validates :guid, uniqueness: true
  validates :user_id, :course_id, :price_paid, :access_expiration_date,
    presence: true
  validates :price_paid, numericality: { greater_than: 49 }

  before_save :populate_guid

  private

  def populate_guid
    if new_record?
      while !valid? || self.guid.nil?
        self.guid = SecureRandom.random_number(1_000_000_000).to_s(36)
      end
    end
  end

end
