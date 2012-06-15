class CustomProductsController < ApplicationController

  before_filter :authorize, :except => [:index, :show ]
  # GET /custom_products
  # GET /custom_products.json
  def index
    @custom_products = CustomProduct.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @custom_products }
    end
  end

  # GET /custom_products/1
  # GET /custom_products/1.json
  def show
    @custom_product = CustomProduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @custom_product }
    end
  end

  # GET /custom_products/new
  # GET /custom_products/new.json
  def new
    @custom_product = CustomProduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @custom_product }
    end
  end

  # GET /custom_products/1/edit
  def edit
    @custom_product = CustomProduct.find(params[:id])
  end

  # POST /custom_products
  # POST /custom_products.json
  def create
    @custom_product = CustomProduct.new(params[:custom_product])

    respond_to do |format|
      if @custom_product.save
        format.html { redirect_to @custom_product, notice: 'Custom product was successfully created.' }
        format.json { render json: @custom_product, status: :created, location: @custom_product }
      else
        format.html { render action: "new" }
        format.json { render json: @custom_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /custom_products/1
  # PUT /custom_products/1.json
  def update
    @custom_product = CustomProduct.find(params[:id])

    respond_to do |format|
      if @custom_product.update_attributes(params[:custom_product])
        format.html { redirect_to @custom_product, notice: 'Custom product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @custom_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_products/1
  # DELETE /custom_products/1.json
  def destroy
    @custom_product = CustomProduct.find(params[:id])
    @custom_product.destroy

    respond_to do |format|
      format.html { redirect_to custom_products_url }
      format.json { head :no_content }
    end
  end
end
