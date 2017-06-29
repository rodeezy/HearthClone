class ChangeBattleBattleSideRelationShip < ActiveRecord::Migration[5.0]
  def change
    add_column :battle_sides, :battle_id, :integer, null: false
    remove_column :battles, :battle_side_one_id
    remove_column :battles, :battle_side_two_id
  end
end
