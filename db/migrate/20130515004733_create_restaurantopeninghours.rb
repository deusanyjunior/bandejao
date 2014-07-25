# -*- encoding : utf-8 -*-
class CreateRestaurantopeninghours < ActiveRecord::Migration
  def self.up
    create_table :restaurantopeninghours do |t|
      t.references :restaurant
      t.references :meal
      t.integer :wday
      t.string :open
      t.string :close

      t.timestamps
    end
  end

  def self.down
    drop_table :restaurantopeninghours
  end
end
