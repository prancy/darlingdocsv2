class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.string :participation
      t.string :behavior
      t.string :homework
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
