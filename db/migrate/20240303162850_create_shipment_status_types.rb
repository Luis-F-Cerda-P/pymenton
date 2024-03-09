class CreateShipmentStatusTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :shipment_status_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
