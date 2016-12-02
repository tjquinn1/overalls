class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
    	t.string :band_member

      t.timestamps null: false
    end
  end
end
