class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.datetime :date_of_departure
      t.datetime :date_of_arrival
      t.boolean :collect
      t.integer :user_id

      t.timestamps
    end
  end
end
