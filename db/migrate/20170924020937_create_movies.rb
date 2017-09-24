class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.datetime :realease_date
      t.string :producer
      t.string :director
      t.integer :country_id

      t.timestamps
    end
  end
end
