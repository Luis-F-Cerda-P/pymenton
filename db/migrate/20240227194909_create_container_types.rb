class CreateContainerTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :container_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
