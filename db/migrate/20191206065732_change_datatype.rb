class ChangeDatatype < ActiveRecord::Migration[5.2]
  def change
    change_column :polishes, :polish_day, 'datetime'
  end
end
