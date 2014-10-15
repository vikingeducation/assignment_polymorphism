class ChangeColumn1 < ActiveRecord::Migration
  def change
    rename_column :pizzas, :type, :name
  end
end
