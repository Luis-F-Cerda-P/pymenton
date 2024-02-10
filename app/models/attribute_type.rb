class AttributeType < ApplicationRecord
  validates :name, uniqueness: true
end
