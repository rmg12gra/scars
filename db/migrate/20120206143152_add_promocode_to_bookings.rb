class AddPromocodeToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :promocode, :string

  end
end
