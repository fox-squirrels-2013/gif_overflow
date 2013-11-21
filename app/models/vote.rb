class Vote < ActiveRecord::Base
  belongs_to :gif
  validates :gif_id, presence: true
end