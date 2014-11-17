class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :user_id
      t.string :guid
      t.string :stripe_id
      t.integer :course_id
      t.datetime :access_expiration_date
      t.integer :price_paid

      t.timestamps null: false
    end
    add_index :sales, :user_id
    add_index :sales, :guid
    add_index :sales, :course_id
    add_index :sales, :access_expiration_date
  end
end
