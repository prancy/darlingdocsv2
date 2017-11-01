class AddReportToStudent < ActiveRecord::Migration[5.1]
  def change
    add_reference :students, :report, foreign_key: true
  end
end
