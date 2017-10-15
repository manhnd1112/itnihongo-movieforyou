class AddMessageToRate < ActiveRecord::Migration[5.1]
  def change
    add_column :rates, :message, :text
    change_column :rates, :score, :float
  end
end
