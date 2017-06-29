class CreateBattles < ActiveRecord::Migration[5.0]
  def change
    create_table :battles do |t|
      t.integer :battle_side_one_id, null: false
      t.integer :battle_side_two_id, null: false
      t.boolean :in_progress, default: true # cant update if not in progress

      t.timestamps
    end
  end
end
