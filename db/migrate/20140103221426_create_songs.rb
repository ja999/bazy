class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :number
      t.integer :rating

      t.timestamps
    end
  end
end
