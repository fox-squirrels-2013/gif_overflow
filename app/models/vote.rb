class Vote < ActiveRecord::Base

  attr_accessible :gif_id, :user_id

  belongs_to :gif
  belongs_to :user
  validates :gif_id, :user_id, presence: true

end
