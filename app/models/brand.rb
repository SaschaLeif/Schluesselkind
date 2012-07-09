class Brand < ActiveRecord::Base
  include ActiveModel::Validations
  attr_accessible :logo_url, :name, :origin, :rating, :info_text

  has_many :products
  has_one :producer, :dependent => :destroy

  # default_scope :order => 'name'

  before_destroy :ensure_not_referenced_by_any_product

  private
  # sicherstellen, dass es keine Produkte dieser Marke gibt!
  def ensure_not_referenced_by_any_product
    if products.empty?
    return true
    else
      errors.add(:base, 'Kann nicht geloescht werden! Es gibt Produkte dieser Marke!')
    return false
    end
  end

# damit die Felder ausgefüllt sind
# validates_presence_of :logo_url, :name, :origin, :rating, :info_text, :message => "darf nicht leer sein"
# validates_uniqueness_of :name, :message => "Marke gibt es bereits"
# validates_format_of :logo_url, :with => %r{\.(gif|jpg|jpeg|png)$}i, :message => 'muss gif/jpg/jpeg/png sein'
end
