class Venue < ActiveRecord::Base
  attr_accessible :addressline1, :addressline2, :city, :country, :name, :state, :zipcode
  
  validates_presence_of :name
  validates_presence_of :addressline1
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :zipcode
  
  
  
  
  
end
