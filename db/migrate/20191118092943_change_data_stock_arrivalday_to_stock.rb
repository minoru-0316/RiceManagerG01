class ChangeDataStockArrivaldayToStock < ActiveRecord::Migration[5.2]
  def change
    remove_column :stocks, :stock_arrivalday
    add_column :stocks, :stock_arrivalday, :datetime
  end
end
