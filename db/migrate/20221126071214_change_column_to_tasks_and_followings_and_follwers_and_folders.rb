class ChangeColumnToTasksAndFollowingsAndFollwersAndFolders < ActiveRecord::Migration[7.0]
  def change
    change_column :tasks, :user_id, :integer, foreign_key: true
    change_column :tasks, :folder_id, :integer, foreign_key: true
    change_column :followers, :user_id, :integer, foreign_key: true
    change_column :followings, :user_id, :integer, foreign_key: true
    change_column :folders, :user_id, :integer, foreign_key: true
  end
end
