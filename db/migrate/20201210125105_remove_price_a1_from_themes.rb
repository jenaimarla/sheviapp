class RemovePriceA1FromThemes < ActiveRecord::Migration[5.2]
  def change
    remove_column :themes, :price_a1, :integer
  end
end
