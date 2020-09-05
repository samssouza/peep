class ChangeFollowerPkToFollowers < ActiveRecord::Migration[6.0]
  def change
    change_table :followers do |t|
      t.change :follower_id, :bigint, {foreign_key: {  to_table: :users }}

    end
  end
end
