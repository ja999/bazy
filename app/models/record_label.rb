class RecordLabel < ActiveRecord::Base
  attr_accessible :description, :established, :name, :album_ids

  has_many :albums
end
