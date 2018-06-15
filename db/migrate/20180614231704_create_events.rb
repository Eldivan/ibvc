class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date_event
      t.string :responsible

      t.timestamps
    end
  end
end
