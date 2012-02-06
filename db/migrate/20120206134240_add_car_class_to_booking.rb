class AddCarClassToBooking < ActiveRecord::Migration
  def change
    add_column :bookings, :car_class, :string

  end
end
