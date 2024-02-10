json.extract! goods_order_detail, :id, :quantity, :price, :created_at, :updated_at
json.url goods_order_detail_url(goods_order_detail, format: :json)
