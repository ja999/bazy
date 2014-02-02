class AddLeghtToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :length, :time
  end
end
