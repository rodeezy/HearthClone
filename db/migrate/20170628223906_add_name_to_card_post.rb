class AddNameToCardPost < ActiveRecord::Migration[5.0]
  def change
    add_column :card_posts, :name, :string, null: false
  end
end
