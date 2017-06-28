class ChangeTypeColumnstoClass < ActiveRecord::Migration[5.0]
  def change
    rename_column :cards, :type, :class
    rename_column :card_posts, :type, :class
  end
end
