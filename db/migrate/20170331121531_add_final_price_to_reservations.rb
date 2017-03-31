class AddFinalPriceToReservations < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :final_price, :decimal
  end
end
