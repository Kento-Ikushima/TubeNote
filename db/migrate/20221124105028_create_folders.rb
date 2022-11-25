class CreateFolders < ActiveRecord::Migration[7.0]
  def change
    create_table :folders do |t|
      t.string :folder_name, null: false, comment: "フォルダ名"
      t.integer :status, null: false, comment: "公開設定"
      t.integer :user_id, comment: "ユーザーのID"
      t.timestamps
    end
  end
end
