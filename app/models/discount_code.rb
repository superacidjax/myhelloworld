class DiscountCode < ActiveRecord::Base
  has_paper_trail

  has_many :charges

  def not_expired_or_cancelled?
    if self.cancelled?
      false
    else
      self.expiration_date > Date.today
    end
  end
end
