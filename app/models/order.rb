class Order < ActiveRecord::Base

  attr_accessible :address, :email, :name, :pay_type

  validates :name, :address, :email, :pay_type, :presence => true
  PAYMENT_TYPES = [ "Paypal", "Kreditkarte", "Ueberweisung" ]
  validates :pay_type, :inclusion => PAYMENT_TYPES

  # line_items sollen auch gelöscht werden, wenn Bestellung gelöscht wird
  has_many :line_items, :dependent => :destroy

  def add_line_items_from_cart(cart)
    cart.line_items.each do |i|
      i.cart_id = nil
      line_items << i
    end
  end
end
