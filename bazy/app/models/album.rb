class Album < ActiveRecord::Base
  attr_accessible :date, :description, :rating, :title, :type
end
