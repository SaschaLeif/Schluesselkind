class ApplicationController < ActionController::Base

  protect_from_forgery
  helper :all # include all helpers, all the time

  # sollte für Umlaute gut sein??? Vielleicht für später!
  before_filter :set_charset
  def set_charset
    content_type = headers["Content-Type"] || "text/html"
    if /^text\//.match(content_type)
      headers["Content-Type"] = "#{content_type}; charset=utf-8"
    end
  end

# für den Admin Bereich 
  helper_method :admin?    
  protected  
  def admin?  
    false  
  end
  
  # passwort setzen
  def admin?  
     session[:password] == "schluesselkind"  
  end
  
  #authoisierung, nachricht, falls jemand auf die Adminfelder klickt
  def authorize  
    unless admin?  
      flash[:notice] = "Zugriff auf die Administration erfordert Berechtigung!" 
      # TODO :error wäre besser als :notice, aber die Error-Anzeige auf der home seite fehlt noch
      # flash[:error] = "Zugriff auf die Administration erfordert Berechtigung!"   
      redirect_to brand_path  
      false  
    end  
  end

end