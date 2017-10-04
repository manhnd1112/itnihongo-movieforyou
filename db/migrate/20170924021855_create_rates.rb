class CreateRates < ActiveRecord::Migration[5.1]
  def change
    create_table :rates do |t|
      t.integer :user_id
      t.integer :movie_id
      t.integer :score, default: 0, null: false

      t.timestamps
    end
  end
end
