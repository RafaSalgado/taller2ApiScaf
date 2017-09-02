class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.string :pais
      t.string :ciudad
      t.string :direccion

      t.timestamps
    end
  end
end
