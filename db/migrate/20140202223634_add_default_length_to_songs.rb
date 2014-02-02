class AddDefaultLengthToSongs < ActiveRecord::Migration
  def change
    change_column :songs, :length, :time, default: 0.seconds
  end
end
