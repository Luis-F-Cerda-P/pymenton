json.extract! shipment_receipt, :id, :order_item_id, :inventory_item_id, :shipment_id, :shipment_package_id, :quantity_accepted, :created_at, :updated_at
json.url shipment_receipt_url(shipment_receipt, format: :json)
