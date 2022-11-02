class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :accountid
      t.string :status
      t.string :dni
      t.string :nombres
      t.string :apellido_paterno
      t.string :apellido_materno
      t.string :birthdate
      t.string :tup_dni
      t.string :tup_nombres
      t.string :tup_apellido_paterno
      t.string :tup_apellido_materno
      t.string :tup_birthdate

      t.timestamps
    end
  end
end
