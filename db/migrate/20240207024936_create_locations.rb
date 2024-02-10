class CreateLocations < ActiveRecord::Migration[7.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.references :containing_location, { to_table: :locations }
      t.references :location_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
