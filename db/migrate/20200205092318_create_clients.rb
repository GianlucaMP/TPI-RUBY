class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :cuil_cuit
      t.string :nombre_rs
      t.string :email
      t.integer :condicion_iva

      t.timestamps
    end
  end
end
