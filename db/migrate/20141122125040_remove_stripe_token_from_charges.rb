class RemoveStripeTokenFromCharges < ActiveRecord::Migration
  def change
    remove_column :charges, :stripe_token, :string
  end
end
