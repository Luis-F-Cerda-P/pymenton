class CreateGoodIdentifications < ActiveRecord::Migration[7.1]
  def change
    create_table :good_identifications do |t|
      t.references :good, null: false, foreign_key: true
      t.references :identification, null: false, foreign_key: true

      t.timestamps
    end
  end
end
