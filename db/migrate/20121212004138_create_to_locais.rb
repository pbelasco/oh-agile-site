class CreateToLocais < ActiveRecord::Migration
  def change
    create_table :to_locais do |t|
      t.references :local
      t.references :viagem
      t.references :user
      t.references :tripulante

      t.timestamps
    end
    add_index :to_locais, :local_id
    add_index :to_locais, :viagem_id
    add_index :to_locais, :user_id
    add_index :to_locais, :tripulante_id
  end
end
