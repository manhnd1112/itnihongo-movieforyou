class AddAvatarToMovie < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :avatar, :string
  end
end
