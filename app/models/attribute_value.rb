class AttributeValue < ApplicationRecord
  belongs_to :attribute_field
  validates :description, uniqueness: { scope: :attribute_field_id }
end
