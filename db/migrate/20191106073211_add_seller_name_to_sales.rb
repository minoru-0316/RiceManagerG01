class AddSellerNameToSales < ActiveRecord::Migration[5.2]
  def change
    add_column :sales, :seller_name, :string
  end
end
