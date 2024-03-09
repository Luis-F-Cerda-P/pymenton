class CreateShipmentStatuses < ActiveRecord::Migration[7.1]
  def change
    create_table :shipment_statuses do |t|
      t.references :shipment, null: false, foreign_key: true
      t.references :shipment_status_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
