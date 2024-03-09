class CreateShipmentTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :shipment_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
