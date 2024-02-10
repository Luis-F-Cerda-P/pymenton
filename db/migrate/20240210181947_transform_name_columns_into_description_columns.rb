class TransformNameColumnsIntoDescriptionColumns < ActiveRecord::Migration[7.1]
  def change
    add_column :attribute_fields, :description, :string
    add_column :attribute_values, :description, :string
    add_column :locations, :description, :string
    add_column :offers, :description, :string
    add_column :people, :description, :string
    add_column :products, :description, :string

    remove_column :attribute_fields, :name, :string
    remove_column :attribute_values, :name, :string
    remove_column :locations, :name, :string
    remove_column :offers, :name, :string
    remove_column :people, :name, :string
    remove_column :products, :name, :string
  end
end
