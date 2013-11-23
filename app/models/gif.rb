class Gif < ActiveRecord::Base

  attr_accessible :title, :link

  has_many :gifcomments
  has_many :votes

  validates :title, :link, :user_id, presence: true

  #Validate for a link

end
