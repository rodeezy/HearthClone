class CreateDeckCards < ActiveRecord::Migration[5.0]
  def change
    create_table :deck_cards do |t|
      t.integer :deck_id, null: false
      t.integer :card_id, null: false

      t.timestamps
    end
  end
end
