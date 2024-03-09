class CreateOrderContactMechanisms < ActiveRecord::Migration[7.1]
  def change
    create_table :order_contact_mechanisms do |t|
      t.references :order, null: false, foreign_key: true
      t.references :contact_mechanism, null: false, foreign_key: true

      t.timestamps
    end
  end
end
