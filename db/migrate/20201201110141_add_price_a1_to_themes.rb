class AddPriceA1ToThemes < ActiveRecord::Migration[5.2]
  def change
    add_column :themes, :price_a1, :integer
  end
end
