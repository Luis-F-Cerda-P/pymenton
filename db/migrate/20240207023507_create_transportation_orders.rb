class CreateTransportationOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :transportation_orders do |t|
      t.references :transportation_type, null: false, foreign_key: true
      # t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
