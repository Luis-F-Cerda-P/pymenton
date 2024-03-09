class CreateOrderItems < ActiveRecord::Migration[7.1]
  def change
    create_table :order_items do |t|
      t.references :order, null: false, foreign_key: true
      t.references :good, null: false, foreign_key: true
      t.references :feature_applicability, null: false, foreign_key: true
      t.integer :quantity
      t.decimal :amount_paid_per_unit, precision: 15, scale: 2

      t.timestamps
    end
  end
end
