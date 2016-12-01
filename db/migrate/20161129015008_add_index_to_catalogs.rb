class AddIndexToCatalogs < ActiveRecord::Migration
  def change
  	add_reference  :catalogs, :essential, index: true
  end
end
