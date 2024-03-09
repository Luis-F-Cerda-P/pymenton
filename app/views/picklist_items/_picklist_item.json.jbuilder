json.extract! picklist_item, :id, :picklist_id, :inventory_item_id, :quantity, :created_at, :updated_at
json.url picklist_item_url(picklist_item, format: :json)
