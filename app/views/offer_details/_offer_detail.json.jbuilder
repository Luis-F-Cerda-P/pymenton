json.extract! offer_detail, :id, :product_id, :offer_id, :created_at, :updated_at
json.url offer_detail_url(offer_detail, format: :json)
