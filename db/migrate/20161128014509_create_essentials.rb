class CreateEssentials < ActiveRecord::Migration
  def change
    create_table :essentials do |t|
      t.string :band_name
      t.text :bio
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
