class Offer < ApplicationRecord
  has_many :identifiers, as: :identifiable
  has_many :offer_details
  has_many :products, through: :offer_details
end
