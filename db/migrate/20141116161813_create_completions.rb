class CreateCompletions < ActiveRecord::Migration
  def change
    create_table :completions do |t|
      t.integer :lesson_id
      t.integer :user_id
      t.boolean :completed

      t.timestamps null: false
    end
    add_index :completions, :lesson_id
    add_index :completions, :user_id
  end
end
