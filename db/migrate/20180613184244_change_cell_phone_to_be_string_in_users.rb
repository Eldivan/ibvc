class ChangeCellPhoneToBeStringInUsers < ActiveRecord::Migration[5.2]
  def change
  		change_column :users, :cell_phone, :string
  end
end
