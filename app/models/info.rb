class Info < ActiveRecord::Base
  # attr_accessible :title, :body
  
  # wenn Info wegfällt, sollen auch die dazugehörigen products wegfallen
  has_many :products, :dependent => :destroy
end
