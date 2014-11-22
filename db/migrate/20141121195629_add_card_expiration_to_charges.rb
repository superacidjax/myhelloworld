class AddCardExpirationToCharges < ActiveRecord::Migration
  def change
    add_column :charges, :card_expiration, :date
  end
end
