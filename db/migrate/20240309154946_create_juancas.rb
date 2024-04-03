class CreateJuancas < ActiveRecord::Migration[7.1]
  def change
    create_table :juancas do |t|
      t.string :nombre
      t.string :apellido

      t.timestamps
    end
  end
end
