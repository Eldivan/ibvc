class ChangeCpfToBeStringInUsers < ActiveRecord::Migration[5.2]
  def change
  		change_column :users, :cpf, :string
  end
end
