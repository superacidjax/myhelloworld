class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.integer :course_id
      t.string :name
      t.text :description
      t.string :video_url

      t.timestamps null: false
    end
    add_index :lessons, :course_id
  end
end
