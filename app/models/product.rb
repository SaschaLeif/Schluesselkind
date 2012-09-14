class Product < ActiveRecord::Base

  attr_accessible :brand_id, :article_id, :product_price, :color_id, :size_id, :description

  belongs_to :brand
  belongs_to :article
  belongs_to :size
  belongs_to :color
  has_many :line_items

  before_destroy :ensure_not_referenced_by_any_line_item
  default_scope joins(:brand).order('brands.name')

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

  def add_brand(brand_id)
    @current_product = products.find_by_brand_id(brand_id)
    @current_product = products.build(:brand_id => brand_id)
  end

end
