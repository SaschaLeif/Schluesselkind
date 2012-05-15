class Brand < ActiveRecord::Base
  attr_accessible :logo_url, :name, :origin, :rating, :info_text

 #default_scope :order => 'name'
  
  has_many :products
  
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
   validates_presence_of :logo_url, :name, :origin, :rating, :info_text, :message => "darf nicht leer sein." 
   end
