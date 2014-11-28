class CreateDiscountCodes < ActiveRecord::Migration
  def change
    create_table :discount_codes do |t|
      t.string :discount_code
      t.date :expiration_date
      t.text :description
      t.string :discount_type
      t.integer :discount_amount
      t.string :referral_email
      t.integer :original_sale_price
      t.integer :final_sale_price
      t.boolean :cancelled
      t.string :referral_name

      t.timestamps null: false
    end
    add_index :discount_codes, :discount_code
    add_index :discount_codes, :referral_email
    add_index :discount_codes, :cancelled
    add_index :discount_codes, :referral_name
  end
end
