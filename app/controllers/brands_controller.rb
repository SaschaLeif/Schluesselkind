class BrandsController < ApplicationController

  #skip_before_filter :authorize, :only => [:show]

  # Adminbereich, alles außer index und show
  before_filter :authorize, :except => [:index, :show ]
  # GET /brands
  # GET /brands.json
  def index
    @brands = Brand.find(:all, :order => "name")
    @cart = current_cart
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @brands }
    end
  end

  # GET /brands/1
  # GET /brands/1.json
  def show
    @brand = Brand.find(params[:id])
    @cart = current_cart
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @brand }
    end
  end

  # GET /brands/new
  # GET /brands/new.json
  def new
    @brand = Brand.new
    @cart = current_cart
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @brand }
    end
  end

  # GET /brands/1/edit
  def edit
    @brand = Brand.find(params[:id])
    @cart = current_cart
  end

  # POST /brands
  # POST /brands.json
  def create
    @brand = Brand.new(params[:brand])
    @cart = current_cart
    respond_to do |format|
      if @brand.save
        format.html { redirect_to @brand, notice: 'Brand was successfully created.' }
        format.json { render json: @brand, status: :created, location: @brand }
      else
        format.html { render action: "new" }
        format.json { render json: @brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /brands/1
  # PUT /brands/1.json
  def update
    @brand = Brand.find(params[:id])
    @cart = current_cart
    respond_to do |format|
      if @brand.update_attributes(params[:brand])
        format.html { redirect_to @brand, notice: 'Brand was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brands/1
  # DELETE /brands/1.json
  def destroy
    @brand = Brand.find(params[:id])
    @brand.destroy
    @cart = current_cart
    respond_to do |format|
      format.html { redirect_to brands_url }
      format.json { head :no_content }
    end
  end
end
