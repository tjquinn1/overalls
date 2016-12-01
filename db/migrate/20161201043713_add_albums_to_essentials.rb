class AddAlbumsToEssentials < ActiveRecord::Migration
  def change
  	add_column :essentials, :album, :integer
  end
end
