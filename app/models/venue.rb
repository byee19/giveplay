class Venue < ActiveRecord::Base
  attr_accessible :addressline1, :addressline2, :city, :country, :name, :state, :zipcode, :phone_number, :image, :remote_image_url
  mount_uploader :image, ImageUploader
  
  validates_presence_of :name
  validates_presence_of :addressline1
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :zipcode
  
  
  validates :phone_number, format: { with: /^(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:\(\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\s*\)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)?([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})(?:\s*(?:#|x\.?|ext\.?|extension)\s*(\d+))?$/,
      message: "is an invalid phone number" }, if: :phone_number   
  
  
  
end
