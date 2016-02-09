class AddWeaponableToMurderings < ActiveRecord::Migration
  def change
    add_reference :murderings, :weaponable, polymorphic: true, index: true
  end
end
