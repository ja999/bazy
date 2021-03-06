class Song < ActiveRecord::Base
  attr_accessible :number, :rating, :title, :album_id, :artist_id, :min, :sec

  validates :title, presence: true
  validates :min, numericality: { greater_than_or_equal_to: 0 }
  validates :sec, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 59 }
  validates :number, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }

  acts_as_indexed fields: [:title, :number, :length]

  belongs_to :album
  belongs_to :artist

  def length
    "#{self.min}:#{self.sec}"
  end
end
