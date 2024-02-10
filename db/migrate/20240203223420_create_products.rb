class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :minimun_stock
      # t.references :identifiers, null: false, foreign_key: true

      t.timestamps
    end
  end
end
