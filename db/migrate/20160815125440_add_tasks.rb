class AddTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.integer :minutes, default: 0, null: false
      t.text :comment

      t.integer :story_id

      t.timestamps
    end
  end
end
