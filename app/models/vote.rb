class Vote < ActiveRecord::Base
  belongs_to :gif
  belongs_to :user
  validates :gif_id, presence: true

end
