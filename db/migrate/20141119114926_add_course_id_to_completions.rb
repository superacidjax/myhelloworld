class AddCourseIdToCompletions < ActiveRecord::Migration
  def change
    add_column :completions, :course_id, :integer
    add_index :completions, :course_id
  end
end
