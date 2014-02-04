class RecordLabel < ActiveRecord::Base
  attr_accessible :description, :established, :name, :album_ids

  acts_as_indexed fields: [:name, :description]

  has_many :albums
end
