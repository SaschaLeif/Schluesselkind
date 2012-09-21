class Article < ActiveRecord::Base
  attr_accessible :name, :article_url, :pic1, :pic2, :pic3, :pic4, :pic5

  has_many :products
end
