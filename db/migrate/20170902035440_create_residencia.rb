class CreateResidencia < ActiveRecord::Migration[5.1]
  def change
    create_table :residencia do |t|
      t.string :tipo
      t.integer :pisos
      t.text :estado

      t.timestamps
    end
  end
end
