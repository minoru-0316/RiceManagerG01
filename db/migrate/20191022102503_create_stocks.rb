class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.integer :user_id
      t.integer :polish_id
      t.string :stock_farmer_name
      t.integer :farmer_id
      t.string :stock_brand
      t.integer :stock_purchased_amount
      t.integer :stock_used_amount
      t.integer :stock_present_amount
      t.integer :stock_price_without_tax
      t.integer :stock_price_tax_included
      t.string :stock_quality
      t.text :stock_memorandum

      t.timestamps
    end
  end
end
