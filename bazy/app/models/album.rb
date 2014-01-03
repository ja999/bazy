class Album < ActiveRecord::Base
  attr_accessible :date, :description, :rating, :title, :type

  has_and_belongs_to_many :genres
end
