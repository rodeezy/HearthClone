class RemoveUpandDownVoteColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :card_posts, :upvotes
    remove_column :card_posts, :downvotes
    remove_column :image_posts, :upvotes
    remove_column :image_posts, :downvotes
    remove_column :comments, :upvotes
    remove_column :comments, :downvotes
  end
end
