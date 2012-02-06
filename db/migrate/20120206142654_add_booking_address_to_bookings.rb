class AddBookingAddressToBookings < ActiveRecord::Migration
  def change
	add_column :bookings, :booking_address, :string
  end
end
