class RecordLabel < ActiveRecord::Base
  attr_accessible :description, :established, :name

  has_many :albums
end
