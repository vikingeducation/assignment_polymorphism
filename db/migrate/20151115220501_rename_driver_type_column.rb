class RenameDriverTypeColumn < ActiveRecord::Migration
  def change
    rename_column :drivers, :type, :vehicle_type
  end
end
