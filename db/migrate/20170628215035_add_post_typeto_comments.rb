class AddPostTypetoComments < ActiveRecord::Migration[5.0]
  def change
    add_column :card_post_comments, :post_type, :string
  end
end
