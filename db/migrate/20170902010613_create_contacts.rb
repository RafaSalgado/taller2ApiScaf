class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :nombre
      t.integer :tel
      t.string :email
      t.text :mensaje

      t.timestamps
    end
  end
end
