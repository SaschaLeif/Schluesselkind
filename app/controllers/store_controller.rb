class StoreController < ApplicationController

  skip_before_filter :authorize
  def index
    sort_by = params[:sort_by] || 'name'
    @brands = Brand.find(:all, :order => sort_by)
    #@brands = Brand.paginate :page=>params[:page], :order=> sort_by, :per_page => 2
    @cart = current_cart
  end

end