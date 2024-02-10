json.extract! goods_order, :id, :contact_channel_id, :goods_order_type_id, :transportation_order_id, :created_at, :updated_at
json.url goods_order_url(goods_order, format: :json)
