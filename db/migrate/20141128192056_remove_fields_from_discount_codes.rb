class RemoveFieldsFromDiscountCodes < ActiveRecord::Migration
  def change
    remove_column :discount_codes, :final_sale_price, :integer
    remove_column :discount_codes, :original_sale_price, :integer
  end
end
