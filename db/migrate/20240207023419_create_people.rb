class CreatePeople < ActiveRecord::Migration[7.1]
  def change
    create_table :people do |t|
      t.string :name
      t.references :person_type, null: false, foreign_key: true
      t.references :liable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
