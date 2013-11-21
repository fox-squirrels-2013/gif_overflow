class Gif < ActiveRecord::Base

  has_many :gifcomments
  has_many :votes

  validates :title, :link, presence: true
  attr_accessible :title, :link


  # def init
  #   self.vote_count = 0
  # end

  # def upvote
  #   self.vote_count += 1
  # end

end
