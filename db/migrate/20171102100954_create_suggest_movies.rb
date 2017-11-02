class CreateSuggestMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :suggest_movies do |t|
      t.integer :from_id, null: false
      t.integer :to_id, null: false
      t.integer :movie_id, null: false
      t.string :content

      t.timestamps
    end
  end
end
