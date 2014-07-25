# -*- encoding : utf-8 -*-
class Campus < ActiveRecord::Base
  attr_accessible :name, :address
  
  validates_presence_of :name

  has_many :restaurants
  has_many :places
end
