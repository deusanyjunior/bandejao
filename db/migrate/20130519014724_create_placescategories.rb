# -*- encoding : utf-8 -*-
class CreatePlacescategories < ActiveRecord::Migration
  def self.up
    create_table :placescategories do |t|
      t.references :campusunit
      t.string :name
      t.string :abbreviation

      t.timestamps
    end
  end

  def self.down
    drop_table :placescategories
  end
end
