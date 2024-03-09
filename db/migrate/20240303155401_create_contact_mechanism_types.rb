class CreateContactMechanismTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :contact_mechanism_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
