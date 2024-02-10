class RenameAttributeFieldsTable < ActiveRecord::Migration[7.1]
  def change
    rename_table :attribute_fields, :attribute_types
  end
end
