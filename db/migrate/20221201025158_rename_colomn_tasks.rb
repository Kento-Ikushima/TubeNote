class RenameColomnTasks < ActiveRecord::Migration[7.0]
  def change
    rename_column :tasks, :delete, :delete_at
  end
end
