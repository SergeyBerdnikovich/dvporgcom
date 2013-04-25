class Project < ActiveRecord::Base
  has_one :image
  attr_accessible :date, :description, :title, :image_attributes

  accepts_nested_attributes_for :image,
                                :allow_destroy => :true,
                                :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end
