class CreateMovieTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :movie_types do |t|
      t.integer :movie_id
      t.integer :type_id

      t.timestamps
    end
  end
end
