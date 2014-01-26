class HomeController < ApplicationController

  def index
    @venues = Venue.all
    
    respond_to do |format|
        format.html
        #format.mobile { render :layout => false }
    end   
    
  end
end
