class CreateShipmentReceipts < ActiveRecord::Migration[7.1]
  def change
    create_table :shipment_receipts do |t|
      t.references :order_item, null: false, foreign_key: true
      t.references :inventory_item, null: false, foreign_key: true
      t.references :shipment, null: false, foreign_key: true
      t.references :shipment_package, null: false, foreign_key: true
      t.integer :quantity_accepted

      t.timestamps
    end
  end
end
