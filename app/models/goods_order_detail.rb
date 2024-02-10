class GoodsOrderDetail < ApplicationRecord
  has_many :identifiers, as: :identifiable
end
