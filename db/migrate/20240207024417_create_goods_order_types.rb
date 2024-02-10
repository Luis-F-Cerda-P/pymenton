class CreateGoodsOrderTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :goods_order_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
