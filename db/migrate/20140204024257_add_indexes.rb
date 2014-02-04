class AddIndexes < ActiveRecord::Migration
  def up
    add_index :albums, :artist_id, :name => 'artist_id_ix'
    add_index :songs, :album_id, :name => 'album_id_ix'
  end
end
