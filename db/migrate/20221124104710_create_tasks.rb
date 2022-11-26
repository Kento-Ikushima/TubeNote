class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.integer :user_id, comment: "ユーザーのID"
      t.string :url, null: false, comment: "YouTubeのURL"
      t.text :description, null: false, comment: "コメント"
      t.integer :folder_id, null: false, comment: "フォルダのID"
      t.timestamps
    end
  end
end
