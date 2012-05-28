class Article < ActiveRecord::Base
  attr_accessible :color_id, :name, :size_id, :article_url

  belongs_to :size
  belongs_to :color
  has_many :products
end
