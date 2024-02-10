class CreateAttributeValues < ActiveRecord::Migration[7.1]
  def change
    create_table :attribute_values do |t|
      t.string :name
      t.references :attribute_field, null: false, foreign_key: true

      t.timestamps
    end
  end
end
