json.extract! person, :id, :name, :person_type_id, :liable_id, :liable_type, :created_at, :updated_at
json.url person_url(person, format: :json)
