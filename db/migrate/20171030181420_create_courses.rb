class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.integer :room_number
      t.integer :teacher_id

      t.timestamps
    end
  end
end
