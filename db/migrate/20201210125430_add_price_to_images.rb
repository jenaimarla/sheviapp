class AddPriceToImages < ActiveRecord::Migration[5.2]
  def change
    add_monetize :images, :price, currency: { present: false }
  end
end
