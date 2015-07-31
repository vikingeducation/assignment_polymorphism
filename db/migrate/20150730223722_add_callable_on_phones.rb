class AddCallableOnPhones < ActiveRecord::Migration
  def change
    add_column :phones, :callable_id, :integer
    add_column :phones, :callable_type, :string

    add_index :phones, [:callable_id, :callable_type]
  end
end
