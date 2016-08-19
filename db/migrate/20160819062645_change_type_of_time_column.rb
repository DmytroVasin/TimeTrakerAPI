class ChangeTypeOfTimeColumn < ActiveRecord::Migration[5.0]
  def up
    change_column :tasks, :time, :integer, default: 0, null: false
  end

  def down
    change_column :tasks, :time, :string
  end
end
