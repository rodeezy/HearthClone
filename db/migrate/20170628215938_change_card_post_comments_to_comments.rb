class ChangeCardPostCommentsToComments < ActiveRecord::Migration[5.0]
  def change
    rename_table :card_post_comments, :comments
    rename_table :card_post_comment_replies, :replies
    rename_table :card_post_image_posts, :image_posts
  end
end
