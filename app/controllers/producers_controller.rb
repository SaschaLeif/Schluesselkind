class ProducersController < InheritedResources::Base
  # GET /producers
  # GET /producers.json
  def index
    @producers = Producer.all
    @cart = current_cart

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @producers }
    end
  end

  # GET /producers/1
  # GET /producers/1.json
  def show
    @producer = Producer.find(params[:id])
    @cart = current_cart

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @producer }
    end
  end

  # GET /producers/new
  # GET /producers/new.json
  def new
    @producer = Producer.new
    @cart = current_cart

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @producer }
    end
  end
  
  # GET /producers/1/edit
  def edit
    @producer = Producer.find(params[:id])
    @cart = current_cart
  end
  
  # DELETE /producers/1
  # DELETE /producers/1.json
  def destroy
    @producer = Producer.find(params[:id])
    @producer.destroy

    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Hersteller wurde geloescht' }
      format.json { head :no_content }
    end
  end
end
