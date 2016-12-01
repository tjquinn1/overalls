class AddCountrytoEssentials < ActiveRecord::Migration
  def change
  	add_column :essentials, :country, :string
  end
end
