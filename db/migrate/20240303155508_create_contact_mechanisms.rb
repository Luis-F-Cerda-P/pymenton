class CreateContactMechanisms < ActiveRecord::Migration[7.1]
  def change
    create_table :contact_mechanisms do |t|
      t.references :contact_mechanism_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
