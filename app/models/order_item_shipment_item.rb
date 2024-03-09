class OrderItemShipmentItem < ApplicationRecord
  belongs_to :shipment_item
  belongs_to :order_item
end
