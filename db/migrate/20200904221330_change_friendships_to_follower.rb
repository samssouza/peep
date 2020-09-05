class ChangeFriendshipsToFollower < ActiveRecord::Migration[6.0]
  def change
    rename_table :friendships, :followers
  end
end
