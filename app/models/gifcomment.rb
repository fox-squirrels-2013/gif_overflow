class Gifcomment < ActiveRecord::Base
  belongs_to :gif
  validates :link, presence: true
  attr_accessible :link
end