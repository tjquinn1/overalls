class CreateLabels < ActiveRecord::Migration
  def change
    create_table :labels do |t|
    	t.string :record_label
    	

      t.timestamps null: false
    end
  end
end
