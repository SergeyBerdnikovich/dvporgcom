class Project < ActiveRecord::Base
  belongs_to :image
  attr_accessible :date, :description, :title
end
