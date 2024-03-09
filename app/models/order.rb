class Order < ApplicationRecord
  belongs_to :order_type

  has_many :contact_mechanisms, through: :order_contact_mechanisms
end
