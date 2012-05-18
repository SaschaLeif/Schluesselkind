class StoreController < ApplicationController
  def index

    @brands = Brand.find(:all, :order => "name")
    # @brands = Brand.find(:all, :order => "name, origin, rating")
    # @brands = @brands.sort { |a,b| a.name<=> b.name}
    @brands_rating_sortieren = Brand.find(:all, :order => "rating DESC")
  end

  def update
    # @brands_rating_sortieren = Brand.find(:all, :order => "rating DESC")
  end

end