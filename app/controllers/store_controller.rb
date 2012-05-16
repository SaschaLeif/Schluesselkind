class StoreController < ApplicationController
  

  
   def index
    @brands = Brand.all
   #  @brands = Brand.find(:all, :order => "name, origin, rating")
     @brands_for_select = @brands.sort { |b,a| a.rating<=> b.rating}
       respond_to do |format|
       format.html # index.html.erb
       format.json { render json: @brands }
       end
     end
     
end