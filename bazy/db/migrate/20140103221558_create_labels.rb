class CreateLabels < ActiveRecord::Migration
  def change
    create_table :labels do |t|
      t.string :name
      t.date :established
      t.string :description

      t.timestamps
    end
  end
end
