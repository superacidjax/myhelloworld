class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :price

      t.timestamps null: false
    end
    add_index :courses, :name
    add_index :courses, :price
  end
end
