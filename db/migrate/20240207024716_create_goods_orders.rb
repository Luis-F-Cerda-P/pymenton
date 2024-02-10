class CreateGoodsOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :goods_orders do |t|
      t.references :contact_channel, null: false, foreign_key: true
      t.references :goods_order_type, null: false, foreign_key: true
      t.references :transportation_order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
