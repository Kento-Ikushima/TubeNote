class AddDeleteTaskToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :delete_task, :integer
  end
end
