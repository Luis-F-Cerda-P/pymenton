class CreatePicklistItems < ActiveRecord::Migration[7.1]
  def change
    create_table :picklist_items do |t|
      t.references :picklist, null: false, foreign_key: true
      t.references :inventory_item, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
