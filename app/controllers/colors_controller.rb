class ColorsController < ApplicationController

  before_filter :authorize, :except => [:index, :show ]
  # GET /colors
  # GET /colors.json
  def index
    @colors = Color.find(:all, :order => "name")
    @cart = current_cart
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @colors }
    end
  end

  # GET /colors/1
  # GET /colors/1.json
  def show
    @color = Color.find(params[:id])
    @cart = current_cart
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @color }
    end
  end

  # GET /colors/new
  # GET /colors/new.json
  def new
    @color = Color.new
    @cart = current_cart
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @color }
    end
  end

  # GET /colors/1/edit
  def edit
    @color = Color.find(params[:id])
    @cart = current_cart
  end

  # POST /colors
  # POST /colors.json
  def create
    @color = Color.new(params[:color])
    @cart = current_cart
    respond_to do |format|
      if @color.save
        format.html { redirect_to @color, notice: 'Color was successfully created.' }
        format.json { render json: @color, status: :created, location: @color }
      else
        format.html { render action: "new" }
        format.json { render json: @color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /colors/1
  # PUT /colors/1.json
  def update
    @color = Color.find(params[:id])
    @cart = current_cart
    respond_to do |format|
      if @color.update_attributes(params[:color])
        format.html { redirect_to @color, notice: 'Color was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /colors/1
  # DELETE /colors/1.json
  def destroy
    @color = Color.find(params[:id])
    @color.destroy
    @cart = current_cart
    respond_to do |format|
      format.html { redirect_to colors_url }
      format.json { head :no_content }
    end
  end
end
