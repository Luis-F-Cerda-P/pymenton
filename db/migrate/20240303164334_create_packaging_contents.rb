class CreatePackagingContents < ActiveRecord::Migration[7.1]
  def change
    create_table :packaging_contents do |t|
      t.references :shipment_item, null: false, foreign_key: true
      t.references :shipment_package, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
