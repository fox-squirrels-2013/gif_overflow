class Gifcomment < ActiveRecord::Base

  attr_accessible :link, :gif_id, :user_id

  belongs_to :gif
  belongs_to :user

  validates :link, presence: true
  #validate link

end

