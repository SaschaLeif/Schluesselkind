class Product < ActiveRecord::Base
  attr_accessible :brand_id, :article_id

  belongs_to :brand
  belongs_to :article
end
