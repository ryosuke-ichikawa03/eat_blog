class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :title, null: false
      t.text :image,null: false
      t.text :text
      t.integer :price, null: false
      t.integer :people, null: false
      t.string :url, null: false
      t.integer :user_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end

# |title|text|null: false|
# |text|text||
# |price|integer|null: false|
# |people|integer|null: false|
# |url|string|null: false|
# |user_id|integer|null: false, foreign_key: true|