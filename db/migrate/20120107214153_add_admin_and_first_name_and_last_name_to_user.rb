class AddAdminAndFirstNameAndLastNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, :default => false
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
  
  def self.down
    remove_column :users, :admin
    remove_column :users, :first_name
    remove_column :users, :last_name
  end
end
