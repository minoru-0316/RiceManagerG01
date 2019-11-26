class AddPolishIdToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :polish_id, :integer
  end
end
