class Identifier < ApplicationRecord
  belongs_to :identifier_type
  belongs_to :identifiable, polymorphic: true
  validates :value, uniqueness: { scope: :identifier_type_id }
end
