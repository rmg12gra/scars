class AddBookingPostcodeToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :booking_postcode, :string

  end
end
