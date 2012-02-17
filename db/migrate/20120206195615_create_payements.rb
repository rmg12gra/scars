class CreatePayements < ActiveRecord::Migration
  def change
    create_table :payements do |t|
      t.integer :amount
      t.string :payement_type
      t.integer :booking_id
      t.datetime :payement_date

      t.timestamps
    end
  end
end
