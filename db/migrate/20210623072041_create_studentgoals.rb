class CreateStudentgoals < ActiveRecord::Migration[5.2]
  def change
    create_table :studentgoals do |t|
      t.integer :student_id
      t.integer :goal_id
      t.integer :star
      t.boolean :completed
    end
  end
end
