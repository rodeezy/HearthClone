class CreateCards < ActiveRecord::Migration[5.0]
  # consider making default values instead of null false
  # could be dank af
  def change
    create_table :cards do |t|
      t.integer :attack, null: false
      t.integer :defense, null: false
      t.integer :cost, null: false
      t.string :powerup
      t.string :name, null: false
      t.string :type, null: false # type of minion or 'spell' for spell

      t.timestamps
    end
  end
end
