class Page < ActiveRecord::Base
  attr_accessible :content, :parent_id, :title
end
