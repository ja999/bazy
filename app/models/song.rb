class Song < ActiveRecord::Base
  attr_accessible :number, :rating, :title, :album_id, :artist_id

  belongs_to :album
  belongs_to :artist
end
