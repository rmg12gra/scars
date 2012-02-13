class User < ActiveRecord::Base

 has_many :bookings, :dependent => :destroy

 has_one :customer, :dependent => :destroy

 has_secure_password
 attr_accessible :email, :password, :password_confirmation

 #####Use for testing only#####
 attr_accessible :is_admin
 ##############################

 validates :email, uniqueness: true, presence: true
 accepts_nested_attributes_for :bookings
end
