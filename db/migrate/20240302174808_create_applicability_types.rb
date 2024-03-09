class CreateApplicabilityTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :applicability_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
