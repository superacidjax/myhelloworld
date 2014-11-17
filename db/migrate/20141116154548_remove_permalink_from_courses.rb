class RemovePermalinkFromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :permalink, :string
  end
end
