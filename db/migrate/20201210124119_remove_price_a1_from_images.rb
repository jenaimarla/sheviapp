class RemovePriceA1FromImages < ActiveRecord::Migration[5.2]
  def change
    remove_column :images, :price_a1, :integer
  end
end
