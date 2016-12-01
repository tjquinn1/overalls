class RemoveEssentialsIndex < ActiveRecord::Migration
  def change
  	remove_column :essentials, :favorite_id
  	remove_column :essentials, :catalog_id
  end
end
