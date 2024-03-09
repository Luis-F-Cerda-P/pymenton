class Identification < ApplicationRecord
  belongs_to :identification_type
  has_many :goods, through: :good_identifications
end
