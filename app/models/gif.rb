class Gif < ActiveRecord::Base

  has_many :gifcomments
  has_many :votes

  validates :title, :link, presence: true
  attr_accessible :title, :link



end
