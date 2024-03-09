class CreateIdentifications < ActiveRecord::Migration[7.1]
  def change
    create_table :identifications do |t|
      t.string :value
      t.references :identification_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
