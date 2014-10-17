class RemoveFavorites < ActiveRecord::Migration
  def change
    remove_column :users, :favorite_food
    remove_column :users, :favorite_litter
  end
end
