class ItemSerializer < ActiveModel::Serializer
  attributes :cuil_cuit, :nombre_rs, :email, :condicion_iva
end
