class ChangeDataPolishDayToPolish < ActiveRecord::Migration[5.2]
  def change
    remove_column :polishes, :polish_day
    add_column :polishes, :polish_day, :datetime
  end
end
