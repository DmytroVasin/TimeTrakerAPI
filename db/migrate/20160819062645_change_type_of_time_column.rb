class ChangeTypeOfTimeColumn < ActiveRecord::Migration[5.0]
  def change
    change_column :tasks, :time, :integer, default: 0, null: false
  end
end
