class AddUrlTypeToFavorites < ActiveRecord::Migration
  def change
  	add_column :favorites, :url_type, :string
  end
end
