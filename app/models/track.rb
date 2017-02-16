class Track < ActiveRecord::Base
  validates :album_id, :title, :track_type, presence: true

  belongs_to :album

  has_many :band,
  through: :album,
  source: :band

end
