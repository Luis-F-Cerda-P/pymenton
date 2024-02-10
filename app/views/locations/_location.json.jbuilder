json.extract! location, :id, :name, :containing_location_id, :location_type_id, :created_at, :updated_at
json.url location_url(location, format: :json)
