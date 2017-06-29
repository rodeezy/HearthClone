class CreateBattleSides < ActiveRecord::Migration[5.0]
  def change
    create_table :battle_sides do |t|
      t.integer :player_id, null: false
      t.integer :deck_id, null: false # contains hero info
      t.integer :health, default: 30
      # t.integer :hand_id, null: false
      # t.integer :battle_deck_id, null: false # for when cards have been drawn, etc
      # t.integer :field_id, null: false # minions in the field
      # could add transaction_history_id and a transaction_history model

      t.timestamps
    end
  end
end
