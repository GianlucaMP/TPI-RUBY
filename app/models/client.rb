class Client < ApplicationRecord
  has_many :reservations
  enum condicion_iva: {
    iva_responsable_inscripto: 1,
    iva_responsable_no_inscripto: 2,
    iva_no_responsable: 3,
    iva_sujeto_externo: 4,
    consumidor_final: 5,
    responsable_monotributo: 6,
    sujeto_no_categorizado: 7,
    proveedor_del_exterior: 8,
    cliente_del_exterior: 9,
    iva_liberado_leyN19640: 10,
    iva_responsable_inscripto_agente_de_percepcion: 11,
    "Pequeño Contribuyente Eventual": 12,
    "Monotributista Social": 13,
    "Pequeño Contribuyente Eventual Social": 14
  }
end
