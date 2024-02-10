class AttributeField < ApplicationRecord
  validates :name, uniqueness: true
end
