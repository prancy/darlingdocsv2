class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.integer :parent_id
      t.integer :teacher_id

      t.timestamps
    end
  end
end
