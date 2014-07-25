# -*- encoding : utf-8 -*-
class CreateGates < ActiveRecord::Migration
  def self.up
    create_table :gates do |t|
      t.references :campusunit
      t.string :name
      t.string :address
      t.string :tel

      t.timestamps
    end
  end

  def self.down
    drop_table :gates
  end
end
