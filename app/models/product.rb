class Product < ActiveRecord::Base

  attr_accessible :brand_id, :article_id, :product_price

  belongs_to :brand
  belongs_to :article
  has_many :line_items
  
  before_destroy :ensure_not_referenced_by_any_line_item
  
  private

  # damit man das Produkt nicht löscht, während es als line_item 
  #im Warenkorb ist
  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Das Produkt liegt gerade im Warenkorb')
    return false
    end
  end

end
