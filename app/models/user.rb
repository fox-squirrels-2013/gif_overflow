class User < ActiveRecord::Base
  attr_accessible :username, :email, :password_digest

  validates :username, :email, :password_digest, presence: true
  validates :username, :email, uniqueness: true

  validates :email, format: { :with => /[a-z0-9]+@[a-z0-9]{2,}\.[a-z]{2,}/i,
    message: "Invalid email address. Please try again." }

 end
