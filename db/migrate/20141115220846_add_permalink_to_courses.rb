class AddPermalinkToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :permalink, :string
  end
end
