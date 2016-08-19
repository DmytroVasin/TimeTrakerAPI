class AddDateToTask < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :task_date, :datetime
  end
end
