class User < ActiveRecord::Base
  has_secure_password
  
  attr_accessible :email, :password, :password_confirmation
    
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates :password, length: { minimum: 6 }, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
  #validates_presence_of :user_name
  #validates_uniqueness_of :user_name
  
  validates :email, format: { with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/,
      message: "is an invalid email address" }
  
  #validates :cell_phone, format: { with: /^(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:\(\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\s*\)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)?([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})(?:\s*(?:#|x\.?|ext\.?|extension)\s*(\d+))?$/,
  #    message: "is an invalid phone number" }, if: :sms_notification
  
end
