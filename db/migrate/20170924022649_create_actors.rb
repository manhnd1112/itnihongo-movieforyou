class CreateActors < ActiveRecord::Migration[5.1]
  def change
    create_table :actors do |t|
      t.string :name
      t.string :avatar_image
      t.datetime :birthday
      t.text :description
      t.integer :country_id

      t.timestamps
    end
  end
end
