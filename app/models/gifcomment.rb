class Gifcomment < ActiveRecord::Base

  attr_accessible :link, :gif_id

  belongs_to :gif
  validates :link, presence: true
  #validate link

end

