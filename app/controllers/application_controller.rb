class ApplicationController < ActionController::Base

  protect_from_forgery

  # sollte für Umlaute gut sein??? Vielleicht für später!
  before_filter :set_charset
  def set_charset
    content_type = headers["Content-Type"] || "text/html"
    if /^text\//.match(content_type)
      headers["Content-Type"] = "#{content_type}; charset=utf-8"
    end
  end

end