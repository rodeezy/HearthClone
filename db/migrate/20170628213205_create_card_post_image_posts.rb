class CreateCardPostImagePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :card_post_image_posts do |t|
      t.integer :author_id, null: false
      t.integer :post_id, null: false
      t.string :image_url, null: false
      t.integer :upvotes, null: false
      t.integer :downvotes, null: false
      t.string :description
      
      t.timestamps
    end
  end
end
