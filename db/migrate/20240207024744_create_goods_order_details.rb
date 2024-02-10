class CreateGoodsOrderDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :goods_order_details do |t|
      t.integer :quantity
      t.integer :price

      t.timestamps
    end
  end
end
