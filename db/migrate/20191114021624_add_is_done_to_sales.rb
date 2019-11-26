class AddIsDoneToSales < ActiveRecord::Migration[5.2]
  def change
    add_column :sales, :is_done, :boolean, default: false, null: false
  end
end
