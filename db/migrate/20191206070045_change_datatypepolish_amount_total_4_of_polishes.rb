class ChangeDatatypepolishAmountTotal4OfPolishes < ActiveRecord::Migration[5.2]
  def change
    change_column :polishes, :polish_amount_total, 'numeric'

  end
end