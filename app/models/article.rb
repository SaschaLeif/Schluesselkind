class Article < ActiveRecord::Base
  attr_accessible :name, :article_url

  has_many :products
end
