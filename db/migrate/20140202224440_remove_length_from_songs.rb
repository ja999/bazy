class RemoveLengthFromSongs < ActiveRecord::Migration
  def change
    remove_column :songs, :length
  end
end
