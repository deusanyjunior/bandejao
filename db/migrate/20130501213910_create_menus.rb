# -*- encoding : utf-8 -*-
class CreateMenus < ActiveRecord::Migration
  def self.up
    create_table :menus do |t|
      t.date :day
      t.references :restaurant
      t.references :meal
      t.text :options
      t.string :kcal

      t.timestamps
    end
  end

  def self.down
    drop_table :menus
  end
end
