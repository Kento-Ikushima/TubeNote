class AddCommentToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :self_introduction, :string
  end
end