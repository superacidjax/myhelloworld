class AddLessonNumberToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :lesson_number, :integer
    add_index :lessons, :lesson_number
  end
end
