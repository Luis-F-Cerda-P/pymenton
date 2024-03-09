json.extract! item_issuance, :id, :picklist_item_id, :shipment_item_id, :inventory_item_id, :quantity, :created_at, :updated_at
json.url item_issuance_url(item_issuance, format: :json)
