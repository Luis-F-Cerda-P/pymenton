json.extract! product, :id, :name, :minimun_stock, :identifiers_id, :created_at, :updated_at
json.url product_url(product, format: :json)
