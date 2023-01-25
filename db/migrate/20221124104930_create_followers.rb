class CreateFollowers < ActiveRecord::Migration[7.0]
    def change
      create_table :followers do |t|
        t.integer :user_id, comment: "フォローされる人"
        t.integer :follower_id, comment: "フォローする人"
        t.timestamps
      end
    end
  end