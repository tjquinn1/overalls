class AddCatalogUrlTypeToCatalogs < ActiveRecord::Migration
  def change
  	add_column :catalogs, :catalog_url_type, :string
  end
end
