class AddPriceA2ToThemes < ActiveRecord::Migration[5.2]
  def change
    add_column :themes, :price_a2, :integer
  end
end
