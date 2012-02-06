class AddClassToBooking < ActiveRecord::Migration
  def change
    add_column :bookings, :class, :string

  end
end
