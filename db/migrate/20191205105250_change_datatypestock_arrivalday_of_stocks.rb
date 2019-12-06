class ChangeDatatypestockArrivaldayOfStocks < ActiveRecord::Migration[5.2]
  def change
    change_column :stocks, :stock_arrivalday, 'date'
  end
end

