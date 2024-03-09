class CreateShipments < ActiveRecord::Migration[7.1]
  def change
    create_table :shipments do |t|
      t.references :shipment_type, null: false, foreign_key: true
      t.decimal :cost, precision: 15, scale: 2

      t.timestamps
    end
  end
end
