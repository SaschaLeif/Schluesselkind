class UsersController < ApplicationController

  skip_before_filter :authorize, :except => [:index, :show]
  # GET /users
  # GET /users.xml
  def index
    @users = User.order(:name)
    @cart = current_cart
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    @user = User.find(params[:id])
    @cart = current_cart
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @user = User.new
    @cart = current_cart
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
    @cart = current_cart
  end

  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])
    @cart = current_cart
    respond_to do |format|
      if @user.save
        format.html { redirect_to(login_url,
          :notice => "User #{@user.name} wurde erfolgreich angelegt.") }
        format.xml  { render :xml => @user,
          :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors,
          :status => :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = User.find(params[:id])
    @cart = current_cart
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(users_url,
          :notice => "User #{@user.name} wurde erfolgreich upgedatet.") }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors,
          :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    @cart = current_cart
    begin
      @user.destroy
      flash[:notice] = "User #{@user.name} geloescht"
    rescue Exception => e
      flash[:notice] = e.message
    end

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end
end