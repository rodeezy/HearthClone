class CreateCardPostComments < ActiveRecord::Migration[5.0]
  def change
    create_table :card_post_comments do |t|
      t.integer :author_id, null: false
      t.integer :post_id, null: false
      t.text :body, null: false
      t.integer :upvotes, default: 0
      t.integer :downvotes, default: 0
      
      t.timestamps
    end
  end
end
