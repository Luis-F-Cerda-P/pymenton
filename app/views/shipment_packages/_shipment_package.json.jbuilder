json.extract! shipment_package, :id, :shipment_id, :created_at, :updated_at
json.url shipment_package_url(shipment_package, format: :json)
