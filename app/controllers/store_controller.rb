class StoreController < ApplicationController
  def index

    @brands = Brand.find(:all, :order => "name")
    # @brands = Brand.find(:all, :order => "name, origin, rating")
    # @brands = @brands.sort { |a,b| a.name<=> b.name}
    # @brands_rating_sortieren = Brand.find(:all, :order => "rating DESC")
    # @brands_rating_sortieren = Brand.find(:all, :order => "rating DESC")
    sort_rating

  end

  private

  def sort_rating

    @brands_rating_sortieren = Brand.find(:all, :order => "rating DESC")
    respond_to do |format|
        format.html # show.html.erb
      end
  end
end