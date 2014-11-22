class AddDefaultCardToCharges < ActiveRecord::Migration
  def change
    add_column :charges, :default_card, :string
  end
end
