class AddPolishDetailsToPolishes < ActiveRecord::Migration[5.2]
  def change
    add_column :polishes, :polish_1_brand, :string
    add_column :polishes, :polish_2_brand, :string
    add_column :polishes, :polish_3_brand, :string
    add_column :polishes, :polish_4_brand, :string
    add_column :polishes, :polish_5_brand, :string
    add_column :polishes, :polish_1_amount, :string
    add_column :polishes, :polish_2_amount, :string
    add_column :polishes, :polish_3_amount, :string
    add_column :polishes, :polish_4_amount, :string
    add_column :polishes, :polish_5_amount, :string
  end
end
