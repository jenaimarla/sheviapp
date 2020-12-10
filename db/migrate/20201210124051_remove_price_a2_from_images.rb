class RemovePriceA2FromImages < ActiveRecord::Migration[5.2]
  def change
    remove_column :images, :price_a2, :integer
  end
end
