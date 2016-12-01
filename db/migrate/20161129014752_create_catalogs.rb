class CreateCatalogs < ActiveRecord::Migration
  def change
    create_table :catalogs do |t|
      t.string :song_name
      

      t.timestamps null: false
    end
  end
end
