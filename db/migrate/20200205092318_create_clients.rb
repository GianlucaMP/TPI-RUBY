class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :cuil_cuit
      t.string :nombre_rs
      t.string :email

      t.timestamps
    end

    add_column :clients, :condicion_iva, :integer, default: 13
  end
end
