class CreateTransportationTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :transportation_types do |t|
      t.string :description
      t.integer :associated_costs

      t.timestamps
    end
  end
end
