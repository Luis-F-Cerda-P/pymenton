class CreateShipmentPackages < ActiveRecord::Migration[7.1]
  def change
    create_table :shipment_packages do |t|
      t.references :shipment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
