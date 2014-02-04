class Genre < ActiveRecord::Base
  attr_accessible :name, :album_ids

  acts_as_indexed fields: [:name]

  has_and_belongs_to_many :albums
end
