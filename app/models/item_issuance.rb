class ItemIssuance < ApplicationRecord
  belongs_to :picklist_item
  belongs_to :shipment_item
  belongs_to :inventory_item
end
