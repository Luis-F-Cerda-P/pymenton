class CreateContainers < ActiveRecord::Migration[7.1]
  def change
    create_table :containers do |t|
      t.string :description
      t.references :facility, foreign_key: true
      t.references :parent_container, foreign_key: { to_table: :containers }
      t.references :container_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
