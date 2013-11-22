class Vote < ActiveRecord::Base

  attr_accessible :gif_id

  belongs_to :gif
  validates :gif_id, presence: true
  # Belongs to user

end
