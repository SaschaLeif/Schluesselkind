class StoreController < ApplicationController

  skip_before_filter :authorize
  def index
    sort_by = params[:sort_by] || 'name'
    @brands = Brand.find(:all, :order => sort_by)
  end

end