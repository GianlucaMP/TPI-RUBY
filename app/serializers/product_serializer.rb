class ProductSerializer < ActiveModel::Serializer
  attributes :id, :codigo_unico, :descripcion, :detalle
end
