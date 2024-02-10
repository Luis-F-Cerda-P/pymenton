class IdentifierType < ApplicationRecord
  validates :description, uniqueness: true
  has_many :identifiers
end
