class CreatePostTags < ActiveRecord::Migration[5.2]
  def change
    create_table :post_tags do |t|
      t.references :tag, foregin_key: true
      t.references :post, foregin_key: true
      t.timestamps
    end
  end
end
