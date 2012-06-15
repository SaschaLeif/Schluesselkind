class CustomProduct < ActiveRecord::Base
  attr_accessible :print_id, :product_id

  belongs_to :print
  belongs_to :product
end
