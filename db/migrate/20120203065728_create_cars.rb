class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :reg
      t.string :model
      t.string :class
      t.boolean :repair
      t.integer :booking_id

      t.timestamps
    end
  end
end
