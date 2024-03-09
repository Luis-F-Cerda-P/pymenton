class CreateLots < ActiveRecord::Migration[7.1]
  def change
    create_table :lots do |t|
      t.string :description

      t.timestamps
    end
  end
end
