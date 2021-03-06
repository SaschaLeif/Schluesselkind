class LineItemsController < ApplicationController
  skip_before_filter :authorize
  # before_filter :authorize, :except => [:index, :show, :new, :create, :update, :destroy, :edit ]
  # GET /line_items
  # GET /line_items.xml
  def index
    @line_items = LineItem.all
    @cart = current_cart
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @line_items }
    end
  end

  # GET /line_items/1
  # GET /line_items/1.xml
  def show
    @line_item = LineItem.find(params[:id])
    @cart = current_cart
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @line_item }
    end
  end

  # GET /line_items/new
  # GET /line_items/new.xml
  def new
    @line_item = LineItem.new
    @cart = current_cart
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @line_item }
    end
  end

  # GET /line_items/1/edit
  def edit
    @line_item = LineItem.find(params[:id])
    @cart = current_cart
  end

  # POST /line_items
  # POST /line_items.xml
  def create
    @cart = current_cart
    product = Product.find(params[:product_id])
    @line_item = @cart.add_product(product.id)
    @line_item.product = product

    respond_to do |format|
      if @line_item.save
        format.html { redirect_to(products_url) }
        format.xml  { render :xml => @line_item,
          :status => :created, :location => @line_item }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @line_item.errors,
          :status => :unprocessable_entity }
      end
    end
  end

  # PUT /line_items/1
  # PUT /line_items/1.xml
  def update
    @line_item = LineItem.find(params[:id])
    @cart = current_cart
    respond_to do |format|
      if @line_item.update_attributes(params[:line_item])
        format.html { redirect_to(@line_item, :notice => 'Line item was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @line_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /line_items/1
  # DELETE /line_items/1.xml
  def destroy
    @line_item = LineItem.find(params[:id])
    @line_item.destroy
    @cart = current_cart
    respond_to do |format|
      format.html { redirect_to(store_url) }
      format.xml  { head :ok }
    end
  end
end
