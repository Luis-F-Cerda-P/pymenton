class ProductComponent < ApplicationRecord
  belongs_to :good
  belongs_to :composing_good, class_name: 'good'
end
