class CreateChildren < ActiveRecord::Migration[5.1]
  def change
    create_table :children do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.integer :parentone
      t.integer :parenttwo

      t.timestamps
    end
  end
end
