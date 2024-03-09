json.extract! inventory_item, :id, :good_id, :facility_id, :container_id, :lot_id, :quantity, :created_at, :updated_at
json.url inventory_item_url(inventory_item, format: :json)
