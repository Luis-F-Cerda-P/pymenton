class FeatureApplicability < ApplicationRecord
  belongs_to :feature
  belongs_to :good
  belongs_to :applicability_type
end
