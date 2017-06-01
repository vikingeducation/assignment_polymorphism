class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :title
      t.text :body
      t.integer :user_id

      t.timestamps
    end

    add_index :pages, :user_id
  end
end
