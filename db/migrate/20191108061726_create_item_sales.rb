class CreateItemSales < ActiveRecord::Migration[5.2]
  def change
    create_table :item_sales do |t|
      t.integer :item_id
      t.integer :sale_id

      t.timestamps
    end
  end
end
