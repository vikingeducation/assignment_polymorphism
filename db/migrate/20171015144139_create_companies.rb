class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :owner_name
      t.string :industry

      t.timestamps
    end
  end
end
