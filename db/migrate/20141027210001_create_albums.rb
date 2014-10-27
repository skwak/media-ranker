class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.string :artist
      t.text :description
      t.integer :rank

      t.timestamps
    end
  end
end
