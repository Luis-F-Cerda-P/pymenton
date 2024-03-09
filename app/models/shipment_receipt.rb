class ShipmentReceipt < ApplicationRecord
  belongs_to :order_item
  belongs_to :inventory_item
  belongs_to :shipment
  belongs_to :shipment_package
end
