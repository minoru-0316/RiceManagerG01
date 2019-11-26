class CreatePolishes < ActiveRecord::Migration[5.2]
  def change
    create_table :polishes do |t|
      t.integer :user_id
      t.integer :polish_amount_total
      t.integer :farmer_id
      t.integer :polish_1_farmer_id
      t.string :polish_1_farmer
      t.integer :polish_2_farmer_id
      t.string :polish_2_farmer
      t.integer :polish_3_farmer_id
      t.string :polish_3_farmer
      t.integer :polish_4_farmer_id
      t.string :polish_4_farmer
      t.integer :polish_5_farmer_id
      t.string :polish_5_farmer
      t.text :polish_memorandum

      t.timestamps
    end
  end
end
