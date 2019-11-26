class AddStockarrivaldayToStocks < ActiveRecord::Migration[5.2]
  def change
    add_column :stocks, :stock_arrivalday, :string
  end
end
