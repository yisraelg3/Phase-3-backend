class AddStarsToCompleteToStudentgoals < ActiveRecord::Migration[5.2]
  def change
    add_column :studentgoals, :stars_to_complete, :integer
  end
end
