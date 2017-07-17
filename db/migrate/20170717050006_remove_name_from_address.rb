class RemoveNameFromAddress < ActiveRecord::Migration[5.0]
  def change
    remove_column :addresses, :name
  end
end
