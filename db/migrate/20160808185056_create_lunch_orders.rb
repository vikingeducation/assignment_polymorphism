class CreateLunchOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :lunch_orders do |t|
      t.string :customer_name
      t.timestamps
    end
  end
end
