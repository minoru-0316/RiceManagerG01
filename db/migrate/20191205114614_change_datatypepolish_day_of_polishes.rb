class ChangeDatatypepolishDayOfPolishes < ActiveRecord::Migration[5.2]
  def change
    change_column :polishes, :polish_day, 'date'
  end
end
