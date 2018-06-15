class CreateDepartaments < ActiveRecord::Migration[5.2]
  def change
    create_table :departaments do |t|
      t.string :name
      t.string :departament_head
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
