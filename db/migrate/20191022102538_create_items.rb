class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :user_id
      t.string :item_name
      t.integer :item_price_without_tax
      t.integer :item_price_tax_included
      t.text :item_memorandum
      t.integer :item_shipment_total
      t.integer :item_total_sales_without_tax
      t.integer :item_total_sales_tax_included

      t.timestamps
    end
  end
end
