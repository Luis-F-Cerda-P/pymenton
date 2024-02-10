class Person < ApplicationRecord
  belongs_to :person_type
  belongs_to :liable, polymorphic: true
end
