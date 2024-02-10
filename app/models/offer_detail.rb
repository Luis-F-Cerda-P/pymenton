class OfferDetail < ApplicationRecord
  belongs_to :product
  belongs_to :offer
  has_many :identifiers, as: :identifiable
end
