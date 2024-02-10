class TransportationOrder < ApplicationRecord
  belongs_to :transportation_type
  has_one :person, as: :liable
end
