class CreateItemIssuances < ActiveRecord::Migration[7.1]
  def change
    create_table :item_issuances do |t|
      t.references :picklist_item, null: false, foreign_key: true
      t.references :shipment_item, null: false, foreign_key: true
      t.references :inventory_item, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
