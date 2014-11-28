class AddDiscountCodeIdToCharges < ActiveRecord::Migration
  def change
    add_column :charges, :discount_code_id, :integer
    add_index :charges, :discount_code_id
  end
end
