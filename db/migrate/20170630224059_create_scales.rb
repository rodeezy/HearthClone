class CreateScales < ActiveRecord::Migration[5.0]
  def change
    create_table :scales do |t|
      t.integer :user_id, null: false
      t.integer :value, null: false
      t.integer :scalable_id, null: false
      t.string :scalable_type, null: false

      t.timestamps
    end
  end
end
