class CreateLocais < ActiveRecord::Migration
  def change
    create_table :locais do |t|
      t.string :nome
      t.float :lat
      t.float :lon
      t.string :cidade
      t.string :uf
      t.string :cep
      t.string :rua
      t.string :numero

      t.timestamps
    end
  end
end
