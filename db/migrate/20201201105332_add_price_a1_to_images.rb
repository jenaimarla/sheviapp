class AddPriceA1ToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :price_a1, :integer
  end
end
