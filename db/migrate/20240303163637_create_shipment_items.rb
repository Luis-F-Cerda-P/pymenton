class CreateShipmentItems < ActiveRecord::Migration[7.1]
  def change
    create_table :shipment_items do |t|
      t.references :good, null: false, foreign_key: true
      t.references :shipment, null: false, foreign_key: true
      t.references :feature_applicability, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
