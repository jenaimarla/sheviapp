class AddPriceToCreations < ActiveRecord::Migration[5.2]
  def change
    add_monetize :creations, :price, currency: { present: false }
  end
end
