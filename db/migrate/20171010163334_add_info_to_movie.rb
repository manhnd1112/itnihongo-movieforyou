class AddInfoToMovie < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :imdb, :float
    add_column :movies, :description, :text
  end
end
