# -*- encoding : utf-8 -*-
class CreateCampusunits < ActiveRecord::Migration
  def self.up
    create_table :campusunits do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end

  def self.down
    drop_table :campusunits
  end
end
