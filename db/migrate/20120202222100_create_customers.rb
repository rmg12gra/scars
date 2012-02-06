class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
    add_index :customers, :user_id
  end
end
