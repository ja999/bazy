class Song < ActiveRecord::Base
  attr_accessible :number, :rating, :title, :album_id, :artist_id, :min, :sec

  validates :min, numericality: { greater_than_or_equal_to: 0 }
  validates :sec, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 59 }
  validates :number, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }

  belongs_to :album
  belongs_to :artist
end
