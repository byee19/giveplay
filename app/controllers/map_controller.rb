class MapController < ApplicationController
  layout false
  
  def index
    @venues = Venue.all
    
    #format.html { render :layout => false, nil }
  end
end
