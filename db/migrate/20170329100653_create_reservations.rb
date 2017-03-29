class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.string :first_name
      t.string :last_name
      t.integer :persons
      t.string :time
      t.text :message

      t.timestamps
    end
  end
end
