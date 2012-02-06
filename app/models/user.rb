class User < ActiveRecord::Base
 has_many :bookings, :dependent => :destroy
 has_secure_password
 attr_accessible :email, :password, :password_confirmation
 validates :email, uniqueness: true, presence: true
 accepts_nested_attributes_for :bookings
end
