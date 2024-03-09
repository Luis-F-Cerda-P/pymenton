class CreateReorderGuidelines < ActiveRecord::Migration[7.1]
  def change
    create_table :reorder_guidelines do |t|
      t.references :good, null: false, foreign_key: true
      t.references :facility, null: false, foreign_key: true
      t.datetime :from_date
      t.datetime :thru_date
      t.integer :reorder_quantity
      t.integer :reorder_level

      t.timestamps
    end
  end
end
