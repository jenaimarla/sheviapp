class RemovePriceA2FromThemes < ActiveRecord::Migration[5.2]
  def change
    remove_column :themes, :price_a2, :integer
  end
end
