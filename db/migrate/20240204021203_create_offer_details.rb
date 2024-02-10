class CreateOfferDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :offer_details do |t|
      t.references :product, null: false, foreign_key: true
      t.references :offer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
