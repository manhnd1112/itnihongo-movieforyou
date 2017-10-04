class AddInfoForUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :username, :string, unique: true
    add_column :users, :name, :string
    add_column :users, :birth, :date
    add_column :users, :avatar, :string
  end
end
