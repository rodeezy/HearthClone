class ChangeClassColumnInDeckToHeroClass < ActiveRecord::Migration[5.0]
  def change
    rename_column :decks, :class, :hero_class
  end
end
