json.extract! shipment, :id, :shipment_type_id, :cost, :created_at, :updated_at
json.url shipment_url(shipment, format: :json)
