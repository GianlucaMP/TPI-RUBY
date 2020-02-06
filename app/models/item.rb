class Item < ApplicationRecord
  #has_one :product
  belongs_to :product
  belongs_to :reservation, optional:true
  #has_one :reservation, :trough => :products
  enum status: {disponible: 0, reservado:1, vendido:2}
end
