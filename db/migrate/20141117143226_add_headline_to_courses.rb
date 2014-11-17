class AddHeadlineToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :headline, :string
  end
end
