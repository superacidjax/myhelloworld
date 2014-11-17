class AddTagsToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :programming_language, :string
    add_index :courses, :programming_language
    add_column :courses, :level, :string
    add_index :courses, :level
    add_column :courses, :device, :string
    add_index :courses, :device
  end
end
