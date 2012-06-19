class ApplicationController < ActionController::Base

  before_filter :authorize
  protect_from_forgery
  helper :all # all _helper sind eingebunden

  def index
    @cart = current_cart
  end

  # sollte für Umlaute gut sein??? Vielleicht für später!
  before_filter :set_charset
  def set_charset
    content_type = headers["Content-Type"] || "text/html"
    if /^text\//.match(content_type)
      headers["Content-Type"] = "#{content_type}; charset=utf-8"
    end
  end

  private

  def current_cart
    Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    cart = Cart.create
    session[:cart_id] = cart.id
    cart
  end

  protected

  def authorize
    unless User.find_by_id(session[:user_id])
      redirect_to login_url, :notice => "Bitte einloggen"
    end
  end
end