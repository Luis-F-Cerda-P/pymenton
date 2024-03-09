class Container < ApplicationRecord
  has_many :child_container, class_name: 'Container', foreign_key: 'parent_container_id'

  belongs_to :parent_containerr, class_name: 'Container', optional: true
  belongs_to :facility
  belongs_to :container_type
end
