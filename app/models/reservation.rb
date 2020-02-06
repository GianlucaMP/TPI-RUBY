class Reservation < ApplicationRecord
  #has_and_belongs_to_many :products
  has_many :items
  has_many :products, :through => :items
  belongs_to :client
  belongs_to :user
end
