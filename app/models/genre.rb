class Genre < ActiveRecord::Base
  attr_accessible :name, :album_ids

  has_and_belongs_to_many :albums
end
