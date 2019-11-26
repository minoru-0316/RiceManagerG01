class AddstockIdToPolishes < ActiveRecord::Migration[5.2]
  def change
    add_column :polishes, :stock_id, :integer
  end
end
