class CreateCardPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :card_posts do |t|
      t.integer :author_id, null: false
      t.text :description
      t.integer :attack, null: false
      t.integer :defense, null: false
      t.integer :cost, null: false
      t.string :powerup
      t.integer :upvotes, default: 0
      t.integer :downvotes, default: 0
      t.string :type, null: false

      t.timestamps
    end
  end
end
