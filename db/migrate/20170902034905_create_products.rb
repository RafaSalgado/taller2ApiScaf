class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :precio
      t.string :categoria

      t.timestamps
    end
  end
end
