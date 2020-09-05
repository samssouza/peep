class AddFollowerFkToFollowers < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :followers, :users, name: :user_follower

    change_table :followers do |t|
      t.references :followed_user, index: true, null: false,  foreign_key: { to_table: :users }
    end
  end
end
