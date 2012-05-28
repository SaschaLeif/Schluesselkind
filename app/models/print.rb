class Print < ActiveRecord::Base
  attr_accessible :name, :print_url
  has_and_belongs_to_many :products
end
