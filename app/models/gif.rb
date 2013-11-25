class Gif < ActiveRecord::Base

  attr_accessible :title, :link, :user_id

  has_many :gifcomments
  has_many :votes
  belongs_to :user

  validates :title, :link, :user_id, presence: true
  validates :link, format: { with: %r{\.(gif|jpn|png)$}i,
  					message: 'must be a URL for GIF, JPG, or PNG image.'
	  				}

  #Validate for a link

end
