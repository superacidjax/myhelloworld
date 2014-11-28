class Course < ActiveRecord::Base
  has_paper_trail

  has_many :charges
  has_many :lessons
  has_many :completions

  has_many :users, through: :charges

  extend FriendlyId
  friendly_id :name, use: :slugged

  def calculate_final_discounted_price(discount_id)
    discount = DiscountCode.find(discount_id)
    if discount.discount_type == 'percent'
      price = self.price * ((100.00 - discount.discount_amount) / 100.00)
    else
      price = self.price - discount.discount_amount
    end
    return price
  end

end
