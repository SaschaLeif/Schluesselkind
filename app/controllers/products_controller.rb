class ProductsController < ApplicationController

  skip_before_filter :authorize, :only => [:show]
  # Adminbereich, alles außer index und show
  before_filter :authorize, :except => [:index, :show ]
  # GET /products
  # GET /products.json
  def index

    filter_gender = params[:filter_gender]

    if filter_gender != nil
      @products = Product.find(:all, :order => "article_id", :conditions => {:gender => filter_gender})
    else
      @products = Product.find(:all, :order => "article_id").uniq
    end

    #  filter = params[:brand_filter] || nil
    #  if filter != nil
    #    @products = Product.find(:all, :conditions => {:brand_id=>filter})
    #  else
    #    @products = Product.find(:all)
    #  end
    @cart = current_cart

    #  filter2 = params[ :auswahl] || nil
    #  if filter2 != nil
    #    @sizes = Size.find(:all, :conditions => {:article_id =>filter2})
    #  else
    #    @sizes = Size.find(:all, :order => "id")
    #  end

    #  if (params[:size] && Size.all.collect(&:name).include?(params[:size][:name]))
    #    @products = Product.send(params[:size][:name].downcase)
    #  else
    #    @products = Product.all
    #  end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])
    @cart = current_cart

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/new
  # GET /products/new.json
  def new
    @product = Product.new
    @cart = current_cart

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
    @cart = current_cart
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(params[:product])
    @cart = current_cart
    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Produkt wurde erfolgreich erstellt' }
        format.json { render json: @product, status: :created, location: @product }
      else
        format.html { render action: "new" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
    @product = Product.find(params[:id], :readonly => false)
    @cart = current_cart
    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to @product, notice: 'Produkt wurde erfolgreich geupdatet' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    @cart = current_cart
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Produkt wurde geloescht' }
      format.json { head :no_content }
    end
  end
end
