class CreateNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :notifications do |t|
      t.integer :user_id, null: false
      t.boolean :isRead, default: false
      t.text :content
      t.string :link_to
      t.string :target
      t.integer :target_id

      t.timestamps
    end
  end
end
