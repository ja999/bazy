class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.date :established
      t.string :country
      t.string :description

      t.timestamps
    end
  end
end
