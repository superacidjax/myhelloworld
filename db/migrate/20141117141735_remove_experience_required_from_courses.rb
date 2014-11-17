class RemoveExperienceRequiredFromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :experience_required, :string
  end
end
