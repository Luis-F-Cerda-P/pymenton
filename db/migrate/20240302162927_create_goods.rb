class CreateGoods < ActiveRecord::Migration[7.1]
  def change
    create_table :goods do |t|
      t.string :description
      t.datetime :introduction_date
      t.datetime :sales_discontinuation_date
      t.references :manufacturer, null: false, foreign_key: { to_table: :parties }

      t.timestamps
    end
  end
end
