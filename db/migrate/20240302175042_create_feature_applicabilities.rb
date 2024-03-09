class CreateFeatureApplicabilities < ActiveRecord::Migration[7.1]
  def change
    create_table :feature_applicabilities do |t|
      t.references :feature, null: false, foreign_key: true
      t.references :good, null: false, foreign_key: true
      t.references :applicability_type, null: false, foreign_key: true
      t.datetime :from_date
      t.datetime :thru_date

      t.timestamps
    end
  end
end
