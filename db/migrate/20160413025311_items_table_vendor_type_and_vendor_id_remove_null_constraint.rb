class ItemsTableVendorTypeAndVendorIdRemoveNullConstraint < ActiveRecord::Migration
  def change
    change_column_null :items, :vendor_type, true
    change_column_null :items, :vendor_id, true
  end
end
