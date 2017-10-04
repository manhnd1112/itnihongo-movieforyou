class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :review do |t|
      t.integer :user_id
      t.integer :movie_id
      t.text :content
      t.string :title

      t.timestamps
    end
  end
end
