class Product < ApplicationRecord
  has_many :identifiers, as: :identifiable
  has_many :offer_details
  has_many :offers, through: :offer_details
end
