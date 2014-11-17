class AddNewToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :new, :boolean
    add_index :courses, :new
  end
end
