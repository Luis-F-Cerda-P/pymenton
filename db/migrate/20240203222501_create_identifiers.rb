class CreateIdentifiers < ActiveRecord::Migration[7.1]
  def change
    create_table :identifiers do |t|
      t.string :value
      t.boolean :main_identifier, default: true
      t.references :identifier_type, null: false, foreign_key: true
      t.references :identifiable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
