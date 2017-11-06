class CreateNotificationTrans < ActiveRecord::Migration[5.1]
  def change
    create_table :notification_trans do |t|
      t.references :notification
      t.string :locale
      t.text :content

      t.timestamps
    end
    add_index :notification_trans, [:notification_id, :locale], unique: true
  end
end
