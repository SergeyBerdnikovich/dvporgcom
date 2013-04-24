class AddAttachmentPhotoToImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_table :images
  end
end
