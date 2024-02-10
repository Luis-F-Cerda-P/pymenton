class ContactChannel < ApplicationRecord
  validates :description, uniqueness: true
end
