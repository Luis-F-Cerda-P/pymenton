class Unit < ApplicationRecord
  belongs_to :entry_order, class_name: 'GoodsOrder'
  belongs_to :exit_order, class_name: 'GoodsOrder'
  belongs_to :location
end
