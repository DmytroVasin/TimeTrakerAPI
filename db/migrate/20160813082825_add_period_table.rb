class AddPeriodTable < ActiveRecord::Migration[5.0]
  def change
    create_table :periods do |t|
      t.string :name
    end

    add_column :stories, :period_id, :integer
    remove_column :stories, :period
  end
end
