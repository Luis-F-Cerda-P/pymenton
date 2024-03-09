class CreatePartyTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :party_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
