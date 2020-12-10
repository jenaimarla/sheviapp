class AddPriceToSerieItems < ActiveRecord::Migration[5.2]
  def change
    add_monetize :serie_items, :price, currency: { present: false }
  end
end
