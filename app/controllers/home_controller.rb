class HomeController < ApplicationController

  def index
    respond_to do |format|
        format.html
        #format.mobile { render :layout => false }
    end   
    
  end
end
