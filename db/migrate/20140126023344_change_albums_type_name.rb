class ChangeAlbumsTypeName < ActiveRecord::Migration
  def up
    rename_column :albums, :type, :format
  end
end
