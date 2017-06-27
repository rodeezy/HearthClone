class CreateDecks < ActiveRecord::Migration[5.0]
  def change
    create_table :decks do |t|
      t.integer :owner_id, null: false
      t.string :class, null: false # hero class
      t.string :name, null: false

      t.timestamps
    end
    add_index :decks, :owner_id
  end
end
