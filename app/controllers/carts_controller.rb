class CartsController < InheritedResources::Base
  skip_before_filter :authorize, :except => [:index, :show ]
  # GET /carts
  # GET /carts.xml
  def index
    @carts = Cart.all
    @cart = current_cart
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @carts }
    end
  end

  # GET /carts/1
  # GET /carts/1.xml
  def show
    begin
      @cart = Cart.find(params[:id])
      @cart = current_cart
    rescue ActiveRecord::RecordNotFound
      logger.error "Zugriff auf nicht existenten Warenkorb (id = #{params[:id]})"
      redirect_to store_url, :notice => 'Warenkorb gibt es nicht!'
    else
      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @cart }
      end
    end
  end

  # GET /carts/new
  # GET /carts/new.xml
  def new
    @cart = Cart.new
    @cart = current_cart
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cart }
    end
  end

  # GET /carts/1/edit
  def edit
    @cart = Cart.find(params[:id])
    @cart = current_cart
  end

  # POST /carts
  # POST /carts.xml
  def create
    @cart = Cart.new(params[:cart])
    @cart = current_cart
    respond_to do |format|
      if @cart.save
        format.html { redirect_to(@cart, :notice => 'Warenkorb wurde erfolgreich erstellt') }
        format.xml  { render :xml => @cart, :status => :created, :location => @cart }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cart.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /carts/1
  # PUT /carts/1.xml
  def update
    @cart = Cart.find(params[:id])
    @cart = current_cart
    respond_to do |format|
      if @cart.update_attributes(params[:cart])
        format.html { redirect_to(@cart, :notice => 'Warenkorb wurde erfolgreich upgedatet!') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cart.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /carts/1
  # DELETE /carts/1.xml
  def destroy
    @cart = current_cart
    @cart.destroy
    #@cart = current_cart
    session[:cart_id] = nil

    respond_to do |format|
      format.html { redirect_to(store_url,
        :notice => 'Dein Warenkorb wurde geleert!') }
      format.xml  { head :ok }
    end
  end
end