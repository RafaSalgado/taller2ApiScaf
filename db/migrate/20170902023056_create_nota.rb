class CreateNota < ActiveRecord::Migration[5.1]
  def change
    create_table :nota do |t|
      t.string :titulo
      t.date :fecha
      t.text :nota

      t.timestamps
    end
  end
end
