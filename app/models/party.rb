class Party < ApplicationRecord
  belongs_to :party_type

  has_many :contact_mechanisms, through: :party_contact_mechanisms
  # has_many :goods, foreign_key: :manufacturer_id, class_name: 'Good'
end
