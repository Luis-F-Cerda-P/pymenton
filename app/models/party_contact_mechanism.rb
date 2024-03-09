class PartyContactMechanism < ApplicationRecord
  belongs_to :contact_mechanism
  belongs_to :party
end
