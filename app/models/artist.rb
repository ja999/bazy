class Artist < ActiveRecord::Base
  attr_accessible :country, :description, :established, :name

  has_many :albums
  has_many :songs
end
