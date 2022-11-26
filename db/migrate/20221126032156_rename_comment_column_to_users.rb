class RenameCommentColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :comment, :self_introduction
  end
end
