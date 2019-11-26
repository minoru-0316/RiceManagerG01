class CreateStockPolishes < ActiveRecord::Migration[5.2]
  def change
    create_table :stock_polishes do |t|
      t.integer :stock_id
      t.integer :polish_id

      t.timestamps
    end
  end
end
