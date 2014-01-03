class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title, null: false
      t.date :date
      t.string :type
      t.string :description
      t.integer :rating

      t.timestamps
    end
  end
end
