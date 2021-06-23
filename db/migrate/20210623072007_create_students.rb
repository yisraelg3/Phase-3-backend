class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :grade
      t.integer :teacher_id
      t.string :hair_color
      t.integer :siblings_amount
    end
  end
end
