class AddExperienceRequiredToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :experience_required, :string
    add_index :courses, :experience_required
  end
end
