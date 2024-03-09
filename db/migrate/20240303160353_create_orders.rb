class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.references :order_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
