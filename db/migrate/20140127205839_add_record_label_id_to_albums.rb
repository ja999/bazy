class AddRecordLabelIdToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :record_label_id, :integer
  end
end
