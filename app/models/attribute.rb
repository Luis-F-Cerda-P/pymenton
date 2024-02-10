class Attribute < ApplicationRecord
  belongs_to :attribute_type
  validates :description, uniqueness: { scope: :attribute_type_id }
end
