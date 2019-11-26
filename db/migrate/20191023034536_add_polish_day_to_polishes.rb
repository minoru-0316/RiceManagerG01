class AddPolishDayToPolishes < ActiveRecord::Migration[5.2]
  def change
    add_column :polishes, :polish_day, :string
  end
end
