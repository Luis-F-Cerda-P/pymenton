class AddColumnToNotification < ActiveRecord::Migration[7.1]
  def change
    add_column :notifications, :_id, :string
    add_column :notifications, :user_id, :integer
    add_column :notifications, :topic, :string
    add_column :notifications, :application_id, :integer
    add_column :notifications, :attempts, :integer
    add_column :notifications, :sent, :datetime
    add_column :notifications, :received, :datetime
  end
end
