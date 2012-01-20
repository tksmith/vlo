class AddUserInformationToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :title, :string
    add_column :users, :middle_name, :string
    add_column :users, :suffix, :string
    add_column :users, :nickname, :string
    add_column :users, :street_address, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zip, :string
    add_column :users, :phone, :string
    add_column :users, :website, :string
    add_column :users, :twitter, :string
    add_column :users, :best_way_to_contact, :text
    add_column :users, :represented_before, :boolean, :default => false
    add_column :users, :circumstances, :text
    add_column :users, :consulted_attorney, :boolean, :default => false
    add_column :users, :why_not_hire_attorney, :text
    add_column :users, :legal_services_needed, :text
    add_column :users, :parties_involved, :boolean, :default => false
    add_column :users, :parties, :text
    add_column :users, :how_find_us, :text
  end
  
  def self.down
    remove_column :users, :title
    remove_column :users, :middle_name
    remove_column :users, :suffix
    remove_column :users, :nickname
    remove_column :users, :street_address
    remove_column :users, :city
    remove_column :users, :state
    remove_column :users, :zip
    remove_column :users, :phone
    remove_column :users, :website
    remove_column :users, :twitter
    remove_column :users, :best_way_to_contact
    remove_column :users, :represented_before
    remove_column :users, :circumstances
    remove_column :users, :consulted_attorney
    remove_column :users, :why_not_hire_attorney
    remove_column :users, :legal_services_needed
    remove_column :users, :parties_involved
    remove_column :users, :parties
    remove_column :users, :how_find_us
  end
end
