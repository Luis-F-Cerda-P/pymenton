json.extract! notification, :id, :resource, :created_at, :updated_at
json.url notification_url(notification, format: :json)
