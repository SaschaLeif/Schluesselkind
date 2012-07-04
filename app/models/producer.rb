class Producer < ActiveRecord::Base
  attr_accessible :brand_id, :description
  belongs_to :brand
end
