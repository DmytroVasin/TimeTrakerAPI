class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.text :description
      t.integer :period
      t.integer :story_type

      t.timestamps
    end
  end
end
