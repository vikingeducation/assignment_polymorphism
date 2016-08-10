class CreateDinnerOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :dinner_orders do |t|
      t.string :customer_name
      t.timestamps
    end
  end
end
