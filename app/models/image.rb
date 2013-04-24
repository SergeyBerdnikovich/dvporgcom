class Image < ActiveRecord::Base
  attr_accessible :photo, :photo_content_type, :photo_file_name, :photo_file_size

  has_attached_file :photo,
                    :styles => { :small => "50x50>",
                                 :for_gallery => "200x200>",
                                 :normal => "700x700>" },
                    :url  => "/images/gallery/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/images/gallery/:id/:style/:basename.:extension"

  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 2.megabytes
  validates_attachment_content_type :photo,
                                    :content_type => ['image/jpg', 'image/jpeg', 'image/gif', 'image/png']
  has_one :project
end
