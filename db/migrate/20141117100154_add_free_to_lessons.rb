class AddFreeToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :free, :boolean
    add_index :lessons, :free
  end
end
