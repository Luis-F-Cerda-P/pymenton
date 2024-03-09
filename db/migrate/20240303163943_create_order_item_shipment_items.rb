class CreateOrderItemShipmentItems < ActiveRecord::Migration[7.1]
  def change
    create_table :order_item_shipment_items do |t|
      t.references :shipment_item, null: false, foreign_key: true
      t.references :order_item, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
