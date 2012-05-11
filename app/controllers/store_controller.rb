class StoreController < ApplicationController
  def index
    @brands = Brand.all
  end
end
