class ChangePostTypeToNullFalse < ActiveRecord::Migration[5.0]
  def change
    remove_column :card_post_comments, :post_type
    add_column :card_post_comments, :post_type, :string, null: false
  end
end
