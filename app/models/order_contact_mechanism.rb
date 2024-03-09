class OrderContactMechanism < ApplicationRecord
  belongs_to :order
  belongs_to :contact_mechanism
end
