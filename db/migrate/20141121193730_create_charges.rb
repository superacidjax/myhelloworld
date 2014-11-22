class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.string :state
      t.string :stripe_id
      t.string :stripe_token
      t.text :error
      t.integer :fee_amount
      t.integer :amount
      t.integer :course_id
      t.integer :user_id
      t.string :guid
      t.date :access_expiration_date

      t.timestamps null: false
    end
    add_index :charges, :state
    add_index :charges, :course_id
    add_index :charges, :user_id
    add_index :charges, :guid
    add_index :charges, :access_expiration_date
  end
end
