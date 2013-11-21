class Gif < ActiveRecord::Base
  has_many :gifcomments
  validates :title, :link, presence: true
  attr_accessible :title, :link
end
