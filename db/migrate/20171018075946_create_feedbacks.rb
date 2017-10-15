class CreateFeedbacks < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbacks do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.integer :state, default: 0
      t.string :subject
      t.text :content

      t.timestamps
    end
  end
end
