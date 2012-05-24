class Product < ActiveRecord::Base
  attr_accessible :brand_id, :info_id, :info_text
  belongs_to :brand
  has_many :articles
  has_many :prints
end
