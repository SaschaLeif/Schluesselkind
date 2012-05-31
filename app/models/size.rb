class Size < ActiveRecord::Base
  attr_accessible :name
  has_many :articles
end
