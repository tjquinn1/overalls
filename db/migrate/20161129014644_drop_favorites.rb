class DropFavorites < ActiveRecord::Migration
  def change
  	drop_table :favorites
  	drop_table :catalogs
  end
end
