class CreateCliants < ActiveRecord::Migration[5.2]
  def change
    create_table :cliants do |t|
      t.integer :user_id
      t.string :cliant_name
      t.string :cliant_officer
      t.string :cliant_email
      t.numeric :cliant_tel
      t.string :cliant_address
      t.float :cliant_map_latitude
      t.float :cliant_map_longitude
      t.text :cliant_map_code
      t.string :cliant_type
      t.date :cliant_start_trading
      t.text :cliant_memorandum
      t.string :cliant_delivery_type
      t.integer :cliant_postage
      t.text :cliant_postage_memorandum
      t.integer :cliant_total_sales_without_tax
      t.integer :cliant_total_sales_tax_included

      t.timestamps
    end
  end
end
