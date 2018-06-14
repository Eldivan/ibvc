class CreateAdresses < ActiveRecord::Migration[5.2]
  def change
    create_table :adresses do |t|
      t.string :uf
      t.string :city
      t.string :neighborhood
      t.string :street
      t.string :quartrain
      t.string :set
      t.string :block
      t.string :number
      t.string :townhouse
      t.references :user, index: true

      t.timestamps
    end
  end
end
