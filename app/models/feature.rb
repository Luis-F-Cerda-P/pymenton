class Feature < ApplicationRecord
  belongs_to :feature_type
  has_many :goods, through: :feature_applicabilities
end
