class CreateContactChannels < ActiveRecord::Migration[7.1]
  def change
    create_table :contact_channels do |t|
      t.string :description

      t.timestamps
    end
  end
end
