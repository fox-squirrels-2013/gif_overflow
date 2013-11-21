require 'bcrypt'

class User < ActiveRecord::Base
  attr_accessible :username, :email, :password_digest

  validates :username, :email, :password_digest, presence: true
  validates :username, :email, uniqueness: true

  validates :email, format: { :with => /[a-z0-9]+@[a-z0-9]{2,}\.[a-z]{2,}/i,
    message: "Invalid email address. Please try again." }

  include BCrypt

  def password
    @password ||= Password.new(password_digest)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_digest = @password
  end


 end
