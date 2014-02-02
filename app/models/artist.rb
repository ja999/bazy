class Artist < ActiveRecord::Base
  attr_accessible :country, :description, :established, :name, :album_ids, :song_ids

  validates :name, presence: true, length: { minimum: 2 }

  has_many :albums
  has_many :songs
end
