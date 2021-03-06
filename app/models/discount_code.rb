class DiscountCode < ActiveRecord::Base
  has_paper_trail

  has_many :charges

  DISCOUNT_TYPE = ['percent', 'subtraction']

  validates_inclusion_of :discount_type, in: DISCOUNT_TYPE, allow_nil: false,
    allow_blank: false
  validates :discount_code, :discount_type, :discount_amount, :expiration_date,
    :description, presence: true

  def not_expired_or_cancelled?
    if self.cancelled?
      false
    else
      self.expiration_date > Date.today
    end
  end
end
