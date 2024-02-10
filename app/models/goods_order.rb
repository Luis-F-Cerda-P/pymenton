class GoodsOrder < ApplicationRecord
  has_many :entry_order_units, foreign_key: :entry_order_id, class_name: 'Unit'
  has_many :exit_order_units, foreign_key: :exit_order_id, class_name: 'Unit'

  belongs_to :contact_channel
  belongs_to :goods_order_type
  belongs_to :transportation_order
end
