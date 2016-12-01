class AddAttachmentImageToEssentials < ActiveRecord::Migration
  def self.up
    change_table :essentials do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :essentials, :image
  end
end
