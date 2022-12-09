class RenameDeleteAtColumnToTasks < ActiveRecord::Migration[7.0]
  def change
    rename_column :tasks, :delete_at, :delete_task
  end
end
