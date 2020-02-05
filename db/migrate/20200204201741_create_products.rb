class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :codigo_unico
      t.string :descripcion
      t.text :detalle

      t.timestamps
    end
  end
end
