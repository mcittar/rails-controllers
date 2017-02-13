class ChangeUser < ActiveRecord::Migration
  def change
    add_column :users, :username, :text, null: false
    remove_column :users, :name
    remove_column :users, :email
  end
end
