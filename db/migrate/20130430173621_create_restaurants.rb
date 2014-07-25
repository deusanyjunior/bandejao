# -*- encoding : utf-8 -*-
class CreateRestaurants < ActiveRecord::Migration
  def self.up
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :tel

      t.timestamps
    end
  end

  def self.down
    drop_table :restaurants
  end
end
