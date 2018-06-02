class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :sex
      t.integer :cpf
      t.string :identity
      t.date :date_birth
      t.integer :cell_phone
      t.string :email
      t.date :date_inclusion
      t.string :marital_status
      t.string :professional
      t.string :admin
      t.string :active

      t.timestamps
    end
  end
end
