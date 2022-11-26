class AddColumnFolders < ActiveRecord::Migration[7.0]
  def up
    add_column :folders, :user_id, :integer, comment: "ユーザー名"
  end
end
