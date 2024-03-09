class CreatePartyContactMechanisms < ActiveRecord::Migration[7.1]
  def change
    create_table :party_contact_mechanisms do |t|
      t.references :contact_mechanism, null: false, foreign_key: true
      t.references :party, null: false, foreign_key: true

      t.timestamps
    end
  end
end
