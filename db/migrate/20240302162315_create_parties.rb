class CreateParties < ActiveRecord::Migration[7.1]
  def change
    create_table :parties do |t|
      t.string :description
      t.references :party_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
