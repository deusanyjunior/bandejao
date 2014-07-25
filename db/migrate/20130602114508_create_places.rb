class CreatePlaces < ActiveRecord::Migration
  def self.up
    create_table :places do |t|
      t.references :placescategory
      t.string :name
      t.string :address
      t.string :tel
      t.string :latitude
      t.string :longitude
      t.text :metatags

      t.timestamps
    end
  end

  def self.down
    drop_table :places
  end
end
