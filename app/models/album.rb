class Album < ActiveRecord::Base
  attr_accessible :date, :description, :rating, :title, :type, :format, :genre_ids, :song_ids, :artist_id, :record_label_id

  has_and_belongs_to_many :genres
  belongs_to :artist
  has_many :songs
  belongs_to :record_label
end
