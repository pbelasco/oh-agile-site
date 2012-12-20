class CreateViagens < ActiveRecord::Migration
  def change
    create_table :viagens do |t|
      t.string :titulo
      t.references :origem
      t.references :destino
      t.integer :distancia
      t.date :saida
      t.date :retorno
      t.references :motora
      t.float :valor_contrato

      t.timestamps
    end
    add_index :viagens, :origem_id
    add_index :viagens, :destino_id
  end
end


