json.extract! shipment_item, :id, :good_id, :shipment_id, :feature_applicability_id, :quantity, :created_at, :updated_at
json.url shipment_item_url(shipment_item, format: :json)
