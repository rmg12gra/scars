class Booking < ActiveRecord::Base
has_one :car
belongs_to :user
accepts_nested_attributes_for :car
end
