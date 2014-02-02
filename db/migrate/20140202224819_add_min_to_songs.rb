class AddMinToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :min, :integer
  end
end
