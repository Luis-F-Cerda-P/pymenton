class ShipmentItem < ApplicationRecord
  belongs_to :good
  belongs_to :shipment
  belongs_to :feature_applicability
end
