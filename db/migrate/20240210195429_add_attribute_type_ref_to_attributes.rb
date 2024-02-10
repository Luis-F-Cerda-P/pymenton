class AddAttributeTypeRefToAttributes < ActiveRecord::Migration[7.1]
  def change
    add_reference :attributes, :attribute_type, null: false, foreign_key: true
  end
end
