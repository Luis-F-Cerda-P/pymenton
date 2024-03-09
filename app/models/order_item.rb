class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :good
  has_many :feature_applicability
end
