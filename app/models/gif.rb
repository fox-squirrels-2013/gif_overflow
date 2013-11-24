class Gif < ActiveRecord::Base

  attr_accessible :title, :link, :user_id

  has_many :gifcomments
  has_many :votes

  validates :title, :link, presence: true

end
