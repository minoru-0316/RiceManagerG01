class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.integer :user_id
      t.string :job_type
      t.string :cliant_name
      t.integer :cliant_id
      t.string :material_infomation
      t.string :item_name
      t.integer :sale_item_count
      t.integer :sale_item_amount
      t.integer :polish_id
      t.integer :item_id
      t.text :sale_memorandum
      t.datetime :start_time
      t.string :sale_job_title

      t.timestamps
    end
  end
end
