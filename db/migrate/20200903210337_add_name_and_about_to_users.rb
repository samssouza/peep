class AddNameAndAboutToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :about, :string
  end
end
