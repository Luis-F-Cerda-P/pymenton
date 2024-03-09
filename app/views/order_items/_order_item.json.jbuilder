json.extract! order_item, :id, :order_id, :good_id, :feature_applicability_id, :quantity, :amount_paid_per_unit, :created_at, :updated_at
json.url order_item_url(order_item, format: :json)
