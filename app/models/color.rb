class Color < ActiveRecord::Base
  attr_accessible :name
  has_one :article
end
