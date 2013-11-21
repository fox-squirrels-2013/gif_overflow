class Gif < ActiveRecord::Base

  has_many :gifcomments
  validates :title, :link, presence: true
  attr_accessible :title, :link
  before_save :init

  def init
    self.vote_count = 0
  end

  def upvote
    self.vote_count += 1
  end

end
