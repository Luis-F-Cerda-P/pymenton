json.extract! shipment_status, :id, :shipment_id, :shipment_status_type_id, :created_at, :updated_at
json.url shipment_status_url(shipment_status, format: :json)
