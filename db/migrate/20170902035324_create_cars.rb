class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :modelo
      t.string :marca
      t.string :color

      t.timestamps
    end
  end
end
