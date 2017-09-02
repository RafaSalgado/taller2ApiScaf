class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :nombre_mascota
      t.integer :edad
      t.string :genero
      t.text :caracteristicas

      t.timestamps
    end
  end
end
