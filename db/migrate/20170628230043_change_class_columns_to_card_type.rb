class ChangeClassColumnsToCardType < ActiveRecord::Migration[5.0]
  def change
    rename_column :cards, :class, :card_type
    rename_column :card_posts, :class, :card_type
  end
end
