class AddColumnTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :delete, :integer, null: false, default: 0, comment: "削除されていないは0,削除は1"
  end
end
