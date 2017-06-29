class CreateBattleCards < ActiveRecord::Migration[5.0]
  def change
    create_table :battle_cards do |t|
      t.integer :battle_deck_id
      t.integer :hand_id
      t.integer :field_id
      # no null: false bc it doesn't have to be in any of them

      t.timestamps
    end
  end
end
