class CreatePicklists < ActiveRecord::Migration[7.1]
  def change
    create_table :picklists do |t|

      t.timestamps
    end
  end
end
