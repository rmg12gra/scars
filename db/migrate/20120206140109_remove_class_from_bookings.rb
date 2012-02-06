class RemoveClassFromBookings < ActiveRecord::Migration
  def up
    remove_column :bookings, :class
      end

  def down
    add_column :bookings, :class, :string
  end
end
