class CreateIdentifierTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :identifier_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
