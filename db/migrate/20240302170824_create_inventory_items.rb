class CreateInventoryItems < ActiveRecord::Migration[7.1]
  def change
    create_table :inventory_items do |t|
      t.references :good, null: false, foreign_key: true
      t.references :facility, foreign_key: true
      t.references :container, foreign_key: true
      t.references :lot, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
