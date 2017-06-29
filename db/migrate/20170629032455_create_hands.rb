class CreateHands < ActiveRecord::Migration[5.0]
  def change
    create_table :hands do |t|
      t.integer :battle_side_id, null: false

      t.timestamps
    end
  end
end
