class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer   :articleable_id
      t.string    :articleable_type
      t.string    :title
      t.text      :body
      t.timestamps null: false
    end

    add_index :articles, [:articleable_type, :articleable_id]
  end
end
