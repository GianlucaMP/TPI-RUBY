class Product < ApplicationRecord
  has_many :items
  #has_and_belongs_to_many :reservations
  has_many :reservations, :through => :items
end
