# -*- encoding : utf-8 -*-
class CreateMenuscomments < ActiveRecord::Migration
  def self.up
    create_table :menuscomments do |t|
      t.references :menu
      t.string :commenter
      t.string :message

      t.timestamps
    end
  end

  def self.down
    drop_table :menuscomments
  end
end
