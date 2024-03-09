class Good < ApplicationRecord
  belongs_to :manufacturer, class_name: 'Party', foreign_key: :manufacturer_id
  has_many :identifications, through: :good_identifications
  has_many :features, through: :feature_applicabilities
  has_many :product_composed, class_name: 'ProductComponent', foreign_key: 'good_id'
  has_many :product_composing, class_name: 'ProductComponent', foreign_key: 'composing_good_id'
end
