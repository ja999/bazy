class AddSecToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :sec, :integer
  end
end
