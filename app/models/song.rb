class Song < ActiveRecord::Base
  attr_accessible :number, :rating, :title

  belongs_to :album
  belongs_to :artist
end
