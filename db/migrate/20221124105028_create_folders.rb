class CreateFolders < ActiveRecord::Migration[7.0]
  def change
    create_table :folders do |t|
      t.string :folder_name, null: false
      t.integer :status, null: false
      t.timestamps
    end
  end
end
