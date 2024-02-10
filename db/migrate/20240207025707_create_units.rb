class CreateUnits < ActiveRecord::Migration[7.1]
  def change
    create_table :units do |t|
      t.references :entry_order, foreign_key: { to_table: :goods_orders }
      t.references :exit_order, foreign_key: { to_table: :goods_orders }
      t.references :location, null: false, foreign_key: true
      t.integer :cost_of_unit

      t.timestamps
    end
  end
end
