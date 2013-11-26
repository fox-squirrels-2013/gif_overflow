class Gifcomment < ActiveRecord::Base

  attr_accessible :link

  belongs_to :gif
  belongs_to :user

  validates :link, presence: true
  validates :link, format: { with: %r{\.(gif|jpn|png)$}i,
  					message: 'must be a URL for GIF, JPG, or PNG image.'
	  				}

end

