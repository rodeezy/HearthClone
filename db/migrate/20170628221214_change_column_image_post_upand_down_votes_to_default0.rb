class ChangeColumnImagePostUpandDownVotesToDefault0 < ActiveRecord::Migration[5.0]
  def change
    change_column :image_posts, :upvotes, :integer, default: 0
    change_column :image_posts, :downvotes, :integer, default: 0
  end
end
