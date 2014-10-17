class AddFavLitterFavFoodImageUrlToUsers < ActiveRecord::Migration
  def change
    add_column :users, :favorite_food, :string
    add_column :users, :favorite_litter, :string
    add_column :users, :image_url, :string
    add_column :pages, :title, :string
    add_column :pages, :summary, :text
  end
end
