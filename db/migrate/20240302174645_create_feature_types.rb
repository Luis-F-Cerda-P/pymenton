class CreateFeatureTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :feature_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
