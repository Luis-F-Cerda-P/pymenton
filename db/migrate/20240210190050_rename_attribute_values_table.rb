class RenameAttributeValuesTable < ActiveRecord::Migration[7.1]
  def change
    rename_table :attribute_values, :attributes
  end
end
