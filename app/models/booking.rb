class Booking < ActiveRecord::Base
has_one :car
belongs_to :user
accepts_nested_attributes_for :car

validates :booking_address, :presence => true, :uniqueness => true, :if => Proc.new { |o| o.collect != true }
validates :booking_postcode, :presence => true, :uniqueness => true, :if => Proc.new { |o| o.collect != true}
validates :date_of_departure, :date => {:after => Time.now - 1.day, :before => Time.now + 1.year}
validates :date_of_arrival, :date => {:after => :date_of_departure, :before => Time.now + 1.year}
end
