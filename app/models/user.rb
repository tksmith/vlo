class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :first_name, :last_name, :remember_me, :title, :suffix, :middle_name, :nickname, :street_address, :city, :zip, :state, :phone, :website, :twitter, :best_way_to_contact, :represented_before, :circumstance, :consulted_attorney, :why_not_hire_attorney, :legal_services_needed, :parties_involved, :parties
  validates_presence_of :first_name
  validates_presence_of :last_name
end
