class ChangeDataPolishAmountTotalToPolish < ActiveRecord::Migration[5.2]
  def change
    change_column :polishes, :polish_amount_total, :string
  end
end
