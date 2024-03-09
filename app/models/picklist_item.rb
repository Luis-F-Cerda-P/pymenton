class PicklistItem < ApplicationRecord
  belongs_to :picklist
  belongs_to :inventory_item
end
