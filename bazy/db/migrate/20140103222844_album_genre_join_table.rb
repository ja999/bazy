class AlbumGenreJoinTable < ActiveRecord::Migration
  def change
    create_table :albums_genres, :id => false do |t|
      t.integer :genre_id
      t.integer :album_id
    end
  end
end
