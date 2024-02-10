class AttributeType < ApplicationRecord
  has_many :attr, class_name: 'Attribute'
  validates :description, uniqueness: true
end
