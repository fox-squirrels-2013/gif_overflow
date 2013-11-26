class Gif < ActiveRecord::Base

  attr_accessible :title, :link, :user_id

  has_many :gifcomments
  has_many :votes
  belongs_to :user

  validates :title, :link, :user, presence: true
  validates :link, format: { with: %r{\.(gif|jpn|png)$}i,
  					message: 'must be a URL for GIF, JPG, or PNG image.'
	  				}


  def self.by_vote_count_and_create_at
    self.all.sort_by { |gif| [gif.votes.count,  -gif.created_at.to_f] }.reverse
  end

end
