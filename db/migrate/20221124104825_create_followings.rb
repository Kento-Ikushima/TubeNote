class CreateFollowings < ActiveRecord::Migration[7.0]
    def change
      create_table :followings do |t|
        t.integer :user_id, comment: "フォローする人"
        t.integer :following_id, comment: "フォローされる人"
        t.timestamps
      end
    end
  end