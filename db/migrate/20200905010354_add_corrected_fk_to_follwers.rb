class AddCorrectedFkToFollwers < ActiveRecord::Migration[6.0]
  def change
    remove_column :followers, :follower_id
    add_foreign_key :followers, :users, name: :user_follower
  end
end
