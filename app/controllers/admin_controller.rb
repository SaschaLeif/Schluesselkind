class AdminController < ApplicationController

  skip_before_filter :authorize, :only => [:show]
  def index
  end
end
