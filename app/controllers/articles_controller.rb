class ArticlesController < ApplicationController

  skip_before_filter :authorize, :only => [:show]
  before_filter :authorize, :except => [:index, :show ]
  # GET /articles
  # GET /articles.json
  def index
     @articles = Article.find(:all, :order => "name")
    #size_auswahl = params[:size_auswahl] || nil
   # if size_auswahl != nil
    #  @articles = Article.find(:all, :conditions => {:size_id =>size_auswahl})
    #else
    #  @articles = Article.find(:all)
    #end
    @cart = current_cart
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @articles }
    end
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    @article = Article.find(params[:id])
    @cart = current_cart
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @article }
    end
  end

  # GET /articles/new
  # GET /articles/new.json
  def new
    @article = Article.new
    @cart = current_cart
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @article }
    end
  end

  # GET /articles/1/edit
  def edit
    @article = Article.find(params[:id])
    @cart = current_cart
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(params[:article])
    @cart = current_cart
    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render json: @article, status: :created, location: @article }
      else
        format.html { render action: "new" }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /articles/1
  # PUT /articles/1.json
  def update
    @article = Article.find(params[:id])
    @cart = current_cart
    respond_to do |format|
      if @article.update_attributes(params[:article])
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    @cart = current_cart
    respond_to do |format|
      format.html { redirect_to articles_url }
      format.json { head :no_content }
    end
  end
end
