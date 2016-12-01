class AddIndexToFavorites < ActiveRecord::Migration
  def change
  	add_reference  :favorites, :essential, index: true
  end
end
