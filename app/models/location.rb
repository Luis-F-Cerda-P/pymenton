class Location < ApplicationRecord
  has_many :sublocations, class_name: 'Location', foreign_key: 'containing_location_id'

  belongs_to :containing_location, class_name: 'Location', optional: true
  belongs_to :location_type
end
