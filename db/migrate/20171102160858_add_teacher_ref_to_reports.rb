class AddTeacherRefToReports < ActiveRecord::Migration[5.1]
  def change
    add_reference :reports, :teacher, foreign_key: true
  end
end
