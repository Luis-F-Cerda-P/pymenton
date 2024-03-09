class CreateFeatures < ActiveRecord::Migration[7.1]
  def change
    create_table :features do |t|
      t.string :description
      t.references :feature_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
