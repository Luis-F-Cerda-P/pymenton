class Identifier < ApplicationRecord
  belongs_to :identifier_type
  belongs_to :identifiable, polymorphic: true
end
