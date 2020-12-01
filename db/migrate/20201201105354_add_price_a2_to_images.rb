class AddPriceA2ToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :price_a2, :integer
  end
end
