class ShipmentStatus < ApplicationRecord
  belongs_to :shipment
  belongs_to :shipment_status_type
end
