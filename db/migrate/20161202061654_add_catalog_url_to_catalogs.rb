class AddCatalogUrlToCatalogs < ActiveRecord::Migration
  def change
  	add_column :catalogs, :catalog_url, :string
  end
end
