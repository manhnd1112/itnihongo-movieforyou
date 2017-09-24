class CreateNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :notifications do |t|
      t.integer :from_user_id
      t.integer :to_user_id
      t.string :type
      t.boolean :is_read

      t.timestamps
    end
  end
end
