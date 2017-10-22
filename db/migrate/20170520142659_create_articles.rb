class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.integer :author_id
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
