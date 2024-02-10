class RemoveAttributeFieldIdFromAttributes < ActiveRecord::Migration[7.1]
  def change
    remove_column :attributes, :attribute_field_id, :bigint
  end
end
