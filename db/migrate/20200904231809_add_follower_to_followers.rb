class AddFollowerToFollowers < ActiveRecord::Migration[6.0]
  def change
    change_table :followers do |t|
      t.references :follower,  null: false, foreign_key: true

    end
  end
end
