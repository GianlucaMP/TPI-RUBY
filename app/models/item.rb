class Item < ApplicationRecord
  belongs_to :product
  enum status: {disponible: 0, reservado:1, vendido:2}
end
