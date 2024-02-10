class CreateAttributeFields < ActiveRecord::Migration[7.1]
  def change
    create_table :attribute_fields do |t|
      t.string :name

      t.timestamps
    end
  end
end
