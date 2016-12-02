class AddIndexToMembers < ActiveRecord::Migration
  def change
  	add_reference  :members, :essential, index: true
  end
end
