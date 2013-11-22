class Gif < ActiveRecord::Base

  attr_accessible :title, :link

  has_many :gifcomments
  has_many :votes

  validates :title, :link, presence: true

  #Validate for a link

end
