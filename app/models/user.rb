class User < ActiveRecord::Base
  attr_accessible :username, :email, :password

  has_many :urls
  has_many :comments
  has_many :votes
  
  has_secure_password

  validates_uniqueness_of :username, :email
  validates_presence_of :password, :on => :create
  validates :email, format: { :with => /[a-z0-9]+@[a-z0-9]{2,}\.[a-z]{2,}/i,
    message: "Invalid email address. Please try again." }
end
