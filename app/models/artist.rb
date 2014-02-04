class Artist < ActiveRecord::Base
  attr_accessible :country, :description, :established, :name, :album_ids, :song_ids

  validates :name, presence: true, length: { minimum: 2 }

  acts_as_indexed fields: [:name, :description, :country]

  has_many :albums
  has_many :songs
end
