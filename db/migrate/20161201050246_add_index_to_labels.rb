class AddIndexToLabels < ActiveRecord::Migration
  def change
  	add_reference  :labels, :essential, index: true
  end
end
