json.extract! order_item_shipment_item, :id, :shipment_item_id, :order_item_id, :quantity, :created_at, :updated_at
json.url order_item_shipment_item_url(order_item_shipment_item, format: :json)
