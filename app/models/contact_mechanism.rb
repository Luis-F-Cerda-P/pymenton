class ContactMechanism < ApplicationRecord
  belongs_to :contact_mechanism_type

  has_many :parties, through: :party_contact_mechanisms
  has_many :orders, through: :order_contact_mechanisms
end
