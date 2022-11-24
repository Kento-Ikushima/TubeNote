class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :url, null: false
      t.text :description, null: false
      t.integer :user_id
      t.integer :folder_id, null: false
      t.timestamps
    end
  end
end
