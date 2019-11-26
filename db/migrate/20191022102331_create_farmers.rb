class CreateFarmers < ActiveRecord::Migration[5.2]
  def change
    create_table :farmers do |t|
      t.string :farmer_name
      t.string :farmer_email
      t.numeric :farmer_tel
      t.string :farmer_area
      t.string :farmer_address
      t.float :farmer_map_latitude
      t.float :farmer_map_longitude
      t.text :farmer_map_code
      t.text :farmer_memorandum

      t.timestamps
    end
  end
end
