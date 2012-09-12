class Article < ActiveRecord::Base
  attr_accessible :name, :article_url, :gender

  has_many :products
end
