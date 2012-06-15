# fuer den Adminbereich zum ein- und ausloggen
class SessionsController < ApplicationController

  skip_before_filter :authorize
  def new
  end

  def create
    if user = User.authenticate(params[:name], params[:password])
      session[:user_id] = user.id
      # nach Anmeldung kommt man auf die Store-Startseite
      redirect_to store_url
    else
      redirect_to login_url, :alert => "Invalid user/password combination"
    end
  end

  # wird zur Store-Startseite weitergeleitet
  def destroy
    session[:user_id] = nil
    redirect_to store_url, :notice => "Logged out"
  end
end
