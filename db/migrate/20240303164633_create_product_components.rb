class CreateProductComponents < ActiveRecord::Migration[7.1]
  def change
    create_table :product_components do |t|
      t.references :good, null: false, foreign_key: true
      t.references :composing_good, null: false, foreign_key: { to_table: 'goods' }
      t.datetime :date_from
      t.datetime :date_thru
      t.integer :quantity

      t.timestamps
    end
  end
end
