class Vote < ActiveRecord::Base
  belongs_to :gif
  attr_accessible :vote_count


  # def init
  #   self.vote_count = 0
  # end

  # def upvote
  #   self.vote_count += 1
  # end
end