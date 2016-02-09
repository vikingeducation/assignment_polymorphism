class CreateCandlesticks < ActiveRecord::Migration
  def change
    create_table :candlesticks do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
