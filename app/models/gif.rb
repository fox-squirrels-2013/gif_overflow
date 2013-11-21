class Gif < ActiveRecord::Base
  before_save :init

  def init
    self.vote_count = 0
  end

  def upvote
    self.vote_count += 1
  end

end
