class Charge < ActiveRecord::Base
  has_paper_trail
  include AASM

  belongs_to :course
  belongs_to :user
  belongs_to :discount_code

  validates :guid, uniqueness: true
  validates :user_id, :course_id, :amount, presence: true
  validates :amount, numericality: { greater_then: 49 }

  before_create :populate_guid

  aasm column: 'state' do
    state :pending, intital: true
    state :processing
    state :finished
    state :errored

    event :process, after: :charge_card do
      transitions from: :pending, to: :processing
    end

    event :finish do
      transitions from: :processing, to: :finished
    end

    event :fail do
      transitions from: :processing, to: :errored
    end
  end

  def active?
    access_expiration_date > Date.today
  end

  private

  def populate_guid
    self.guid = SecureRandom.uuid()
  end

  def charge_card
    begin
      stripe_charge = create_stripe_charge
      update_charge(stripe_charge)
      self.finish!
    rescue Stripe::StripeError => e
      self.update_attributes(error: e.message)
      self.fail!
    end
  end

  def create_stripe_charge
    Stripe::Charge.create(amount: self.amount, currency: "usd",
      customer: self.customer_id, description: self.course.name,
      card: self.default_card)
  end

  def update_charge(stripe_charge)
    balance = Stripe::BalanceTransaction.retrieve(stripe_charge.balance_transaction)
    self.update(stripe_id: stripe_charge.id,
      card_expiration: Date.new(stripe_charge.card.exp_year, stripe_charge.card.exp_month, 1),
      fee_amount: balance.fee)
  end

end
