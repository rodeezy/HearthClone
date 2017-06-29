class AddBooleantoDeckCardsForTwoInDeck < ActiveRecord::Migration[5.0]
  def change
    add_column :deck_cards, :two_in_deck, :boolean, default: false
  end
end
