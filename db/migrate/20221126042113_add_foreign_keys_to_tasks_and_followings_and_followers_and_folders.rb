class AddForeignKeysToTasksAndFollowingsAndFollowersAndFolders < ActiveRecord::Migration[7.0]
  def up
    add_foreign_key :tasks, :users
    add_foreign_key :tasks, :folders
    add_foreign_key :followings, :users
    add_foreign_key :followers, :users
    add_foreign_key :folders, :users
  end
end
