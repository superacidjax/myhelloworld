class AddCoursePriceToCharges < ActiveRecord::Migration
  def change
    add_column :charges, :course_price, :integer
  end
end
